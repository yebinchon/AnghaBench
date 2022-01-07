; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcf_re_escape.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcf_re_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpcf_snd = common dso_local global i32 0, align 4
@mpcf_ctor_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mpcf_re_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mpcf_re_escape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 46
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @free(i8* %13)
  %15 = call i8* (...) @mpc_any()
  store i8* %15, i8** %2, align 8
  br label %77

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 94
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32, i32* @mpcf_snd, align 4
  %26 = call i32 (...) @mpc_soi()
  %27 = load i32, i32* @mpcf_ctor_str, align 4
  %28 = call i32 @mpc_lift(i32 %27)
  %29 = call i8* @mpc_and(i32 2, i32 %25, i32 %26, i32 %28, i32 (i8*)* @free)
  store i8* %29, i8** %2, align 8
  br label %77

30:                                               ; preds = %16
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 36
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* @mpcf_snd, align 4
  %40 = call i32 (...) @mpc_eoi()
  %41 = load i32, i32* @mpcf_ctor_str, align 4
  %42 = call i32 @mpc_lift(i32 %41)
  %43 = call i8* @mpc_and(i32 2, i32 %39, i32 %40, i32 %42, i32 (i8*)* @free)
  store i8* %43, i8** %2, align 8
  br label %77

44:                                               ; preds = %30
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 92
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @mpc_re_escape_char(i8 signext %53)
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = call i8* @mpc_char(i8 signext %60)
  br label %64

62:                                               ; preds = %50
  %63 = load i8*, i8** %5, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i8* [ %61, %57 ], [ %63, %62 ]
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %5, align 8
  store i8* %68, i8** %2, align 8
  br label %77

69:                                               ; preds = %44
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = call i8* @mpc_char(i8 signext %72)
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i8*, i8** %5, align 8
  store i8* %76, i8** %2, align 8
  br label %77

77:                                               ; preds = %69, %64, %36, %22, %12
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @mpc_any(...) #1

declare dso_local i8* @mpc_and(i32, i32, i32, i32, i32 (i8*)*) #1

declare dso_local i32 @mpc_soi(...) #1

declare dso_local i32 @mpc_lift(i32) #1

declare dso_local i32 @mpc_eoi(...) #1

declare dso_local i8* @mpc_re_escape_char(i8 signext) #1

declare dso_local i8* @mpc_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
