; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_get_config_path_ptr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_get_config_path_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not get $HOME\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @os_get_config_path_ptr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dstr, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @bcrash(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @dstr_init_copy(%struct.dstr* %4, i8* %11)
  %13 = call i32 @dstr_cat(%struct.dstr* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @dstr_cat(%struct.dstr* %4, i8* %14)
  %16 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  ret i8* %17
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @bcrash(i8*) #1

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
