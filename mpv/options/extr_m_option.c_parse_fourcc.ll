; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_fourcc.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i32, i32* }
%struct.TYPE_3__ = type { i64 }

@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Option %.*s: invalid FourCC: '%.*s'\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32, i32*, i32, i32*, i8*)* @parse_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fourcc(%struct.mp_log* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bstr, align 8
  %10 = alloca %struct.bstr, align 8
  %11 = alloca %struct.mp_log*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = bitcast %struct.bstr* %9 to { i32, i32* }*
  %18 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %17, i32 0, i32 0
  store i32 %2, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %17, i32 0, i32 1
  store i32* %3, i32** %19, align 8
  %20 = bitcast %struct.bstr* %10 to { i32, i32* }*
  %21 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 0
  store i32 %4, i32* %21, align 8
  %22 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 1
  store i32* %5, i32** %22, align 8
  store %struct.mp_log* %0, %struct.mp_log** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %6, i8** %13, align 8
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %27, i32* %8, align 4
  br label %88

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %10, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %15, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 24
  %52 = or i32 %47, %51
  store i32 %52, i32* %14, align 4
  br label %80

53:                                               ; preds = %28
  %54 = bitcast %struct.bstr* %10 to { i32, i32* }*
  %55 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %54, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bstrtoll(i32 %56, i32* %58, %struct.TYPE_3__* %16, i32 16)
  store i32 %59, i32* %14, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %53
  %64 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %65 = bitcast %struct.bstr* %9 to { i32, i32* }*
  %66 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %65, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @BSTR_P(i32 %67, i32* %69)
  %71 = bitcast %struct.bstr* %10 to { i32, i32* }*
  %72 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %71, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @BSTR_P(i32 %73, i32* %75)
  %77 = call i32 @mp_err(%struct.mp_log* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %76)
  %78 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %78, i32* %8, align 4
  br label %88

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %79, %32
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = bitcast i8* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %80
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %63, %26
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @bstrtoll(i32, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32) #1

declare dso_local i32 @BSTR_P(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
