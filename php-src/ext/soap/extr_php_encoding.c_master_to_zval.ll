; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_master_to_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_master_to_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@UNKNOWN_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@XSI_NAMESPACE = common dso_local global i32 0, align 4
@sdl = common dso_local global i32 0, align 4
@XSD_TYPEKIND_COMPLEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @master_to_zval(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %11 = call %struct.TYPE_20__* @check_and_resolve_href(%struct.TYPE_20__* %10)
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %6, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = icmp eq %struct.TYPE_22__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @UNKNOWN_TYPE, align 4
  %16 = call %struct.TYPE_22__* @get_conversion(i32 %15)
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %5, align 8
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XSI_NAMESPACE, align 4
  %22 = call %struct.TYPE_21__* @get_attribute_ex(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %7, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %24 = icmp ne %struct.TYPE_21__* %23, null
  br i1 %24, label %25, label %96

25:                                               ; preds = %17
  %26 = load i32, i32* @sdl, align 4
  %27 = call i32 @SOAP_GLOBAL(i32 %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_22__* @get_encoder_from_prefix(i32 %27, %struct.TYPE_20__* %28, i32 %33)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %8, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = icmp ne %struct.TYPE_22__* %35, null
  br i1 %36, label %37, label %95

37:                                               ; preds = %25
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = icmp ne %struct.TYPE_22__* %38, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %37
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %9, align 8
  br label %43

43:                                               ; preds = %82, %41
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %45 = icmp ne %struct.TYPE_22__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = icmp ne %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @XSD_TYPEKIND_COMPLEX, align 8
  %60 = icmp ne i64 %58, %59
  br label %61

61:                                               ; preds = %52, %46, %43
  %62 = phi i1 [ false, %46 ], [ false, %43 ], [ %60, %52 ]
  br i1 %62, label %63, label %89

63:                                               ; preds = %61
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = icmp eq %struct.TYPE_22__* %64, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %63
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = icmp eq %struct.TYPE_22__* %73, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72, %63
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  br label %89

82:                                               ; preds = %72
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  store %struct.TYPE_22__* %88, %struct.TYPE_22__** %9, align 8
  br label %43

89:                                               ; preds = %81, %61
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = icmp ne %struct.TYPE_22__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** %5, align 8
  br label %94

94:                                               ; preds = %92, %89
  br label %95

95:                                               ; preds = %94, %37, %25
  br label %96

96:                                               ; preds = %95, %17
  br label %97

97:                                               ; preds = %96, %14
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = call i32* @master_to_zval_int(i32* %98, %struct.TYPE_22__* %99, %struct.TYPE_20__* %100)
  ret i32* %101
}

declare dso_local %struct.TYPE_20__* @check_and_resolve_href(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @get_conversion(i32) #1

declare dso_local %struct.TYPE_21__* @get_attribute_ex(i32, i8*, i32) #1

declare dso_local %struct.TYPE_22__* @get_encoder_from_prefix(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @SOAP_GLOBAL(i32) #1

declare dso_local i32* @master_to_zval_int(i32*, %struct.TYPE_22__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
