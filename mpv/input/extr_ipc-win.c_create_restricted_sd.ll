; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc-win.c_create_restricted_sd.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc-win.c_create_restricted_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"O:%sD:(A;;GRGW;;;%s)S:(ML;;NRNWNX;;;%s)\00", align 1
@SDDL_REVISION_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @create_restricted_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_restricted_sd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = call i8* (...) @get_user_sid()
  store i8* %6, i8** %2, align 8
  %7 = call i8* (...) @get_integrity_sid()
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %0
  store i32* null, i32** %1, align 8
  br label %29

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i8* %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @LocalFree(i8* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @LocalFree(i8* %21)
  store i32* null, i32** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @SDDL_REVISION_1, align 4
  %25 = call i32 @ConvertStringSecurityDescriptorToSecurityDescriptorA(i8* %23, i32 %24, i32** %5, i32* null)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @talloc_free(i8* %26)
  %28 = load i32*, i32** %5, align 8
  store i32* %28, i32** %1, align 8
  br label %29

29:                                               ; preds = %14, %13
  %30 = load i32*, i32** %1, align 8
  ret i32* %30
}

declare dso_local i8* @get_user_sid(...) #1

declare dso_local i8* @get_integrity_sid(...) #1

declare dso_local i8* @talloc_asprintf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @ConvertStringSecurityDescriptorToSecurityDescriptorA(i8*, i32, i32**, i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
