; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_s_ex.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_fun_mpfr.c_rpn_s_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@calc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@IDC_LIST_STAT = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@MPFR_DEFAULT_RND = common dso_local global i32 0, align 4
@IDC_RADIO_DEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @rpn_s_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpn_s_ex(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @calc, i32 0, i32 1), align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %8, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @calc, i32 0, i32 2), align 8
  %11 = load i32, i32* @IDC_LIST_STAT, align 4
  %12 = load i32, i32* @LB_GETCOUNT, align 4
  %13 = call i64 @SendDlgItemMessage(i32 %10, i32 %11, i32 %12, i32 0, i32 0)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %21 = call i32 @mpfr_set_ui(i32 %19, i32 0, i32 %20)
  br label %111

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @stat_sum(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %35 = call i32 @mpfr_div_ui(i32 %29, i32 %32, i64 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mpfr_init(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mpfr_init(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %42 = call i32 @mpfr_set_ui(i32 %40, i32 0, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @calc, i32 0, i32 1), align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %8, align 8
  br label %44

44:                                               ; preds = %47, %22
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %57 = call i32 @mpfr_sub(i32 %48, i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %61 = call i32 @mpfr_sqr(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %66 = call i32 @mpfr_add(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %8, align 8
  br label %44

71:                                               ; preds = %44
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 1
  br label %83

81:                                               ; preds = %71
  %82 = load i64, i64* %7, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  %85 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %86 = call i32 @mpfr_div_ui(i32 %74, i32 %75, i64 %84, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MPFR_DEFAULT_RND, align 4
  %94 = call i32 @mpfr_sqrt(i32 %89, i32 %92, i32 %93)
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @calc, i32 0, i32 0), align 8
  %96 = load i64, i64* @IDC_RADIO_DEC, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %83
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mpfr_trunc(i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %98, %83
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @mpfr_clear(i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @mpfr_clear(i32 %109)
  br label %111

111:                                              ; preds = %106, %16
  ret void
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_set_ui(i32, i32, i32) #1

declare dso_local i32 @stat_sum(i32) #1

declare dso_local i32 @mpfr_div_ui(i32, i32, i64, i32) #1

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local i32 @mpfr_sub(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_sqr(i32, i32, i32) #1

declare dso_local i32 @mpfr_add(i32, i32, i32, i32) #1

declare dso_local i32 @mpfr_sqrt(i32, i32, i32) #1

declare dso_local i32 @mpfr_trunc(i32, i32) #1

declare dso_local i32 @mpfr_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
