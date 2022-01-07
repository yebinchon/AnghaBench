; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_append_param.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_append_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMECH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%%%zd%%%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*)* @append_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_param(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @NAMECH, align 4
  %7 = call i64 @strspn(i8* %5, i32 %6)
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @talloc_strdup_append(i8* %13, i8* %14)
  %16 = load i8**, i8*** %3, align 8
  store i8* %15, i8** %16, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @talloc_asprintf_append(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %21, i8* %22)
  %24 = load i8**, i8*** %3, align 8
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %17, %11
  ret void
}

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @talloc_strdup_append(i8*, i8*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
