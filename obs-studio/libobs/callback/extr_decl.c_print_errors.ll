; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_print_errors.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_print_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Errors/warnings for '%s':\0A\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_parser*, i8*)* @print_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errors(%struct.cf_parser* %0, i8* %1) #0 {
  %3 = alloca %struct.cf_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %7 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %6, i32 0, i32 0
  %8 = call i8* @error_data_buildstring(i32* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_WARNING, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @blog(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @bfree(i8* %16)
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

declare dso_local i8* @error_data_buildstring(i32*) #1

declare dso_local i32 @blog(i32, i8*, i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
