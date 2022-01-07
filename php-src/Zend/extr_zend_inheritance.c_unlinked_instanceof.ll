; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_unlinked_instanceof.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_unlinked_instanceof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_9__**, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32*, i32 }

@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@ZEND_ACC_RESOLVED_PARENT = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_ALLOW_UNLINKED = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_NO_AUTOLOAD = common dso_local global i32 0, align 4
@ZEND_ACC_RESOLVED_INTERFACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)* @unlinked_instanceof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlinked_instanceof(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp eq %struct.TYPE_9__* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %135

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = call i32 @instanceof_function(%struct.TYPE_9__* %20, %struct.TYPE_9__* %21)
  store i32 %22, i32* %3, align 4
  br label %135

23:                                               ; preds = %12
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %6, align 8
  br label %25

25:                                               ; preds = %58, %23
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ZEND_ACC_RESOLVED_PARENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %6, align 8
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ZEND_FETCH_CLASS_ALLOW_UNLINKED, align 4
  %46 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.TYPE_9__* @zend_lookup_class_ex(i32 %44, i32* null, i32 %47)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %6, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %59

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = icmp eq %struct.TYPE_9__* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %135

58:                                               ; preds = %53
  br label %25

59:                                               ; preds = %51, %25
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %134

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ZEND_ACC_RESOLVED_INTERFACES, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %64
  store i64 0, i64* %7, align 8
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %81, i64 %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = call i32 @unlinked_instanceof(%struct.TYPE_9__* %84, %struct.TYPE_9__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %135

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %7, align 8
  br label %72

93:                                               ; preds = %72
  br label %133

94:                                               ; preds = %64
  store i64 0, i64* %7, align 8
  br label %95

95:                                               ; preds = %129, %94
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @ZEND_FETCH_CLASS_ALLOW_UNLINKED, align 4
  %117 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %118 = or i32 %116, %117
  %119 = call %struct.TYPE_9__* @zend_lookup_class_ex(i32 %108, i32* %115, i32 %118)
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %6, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = icmp ne %struct.TYPE_9__* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %101
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = call i32 @unlinked_instanceof(%struct.TYPE_9__* %123, %struct.TYPE_9__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %135

128:                                              ; preds = %122, %101
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %7, align 8
  br label %95

132:                                              ; preds = %95
  br label %133

133:                                              ; preds = %132, %93
  br label %134

134:                                              ; preds = %133, %59
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %127, %88, %57, %19, %11
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @instanceof_function(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @zend_lookup_class_ex(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
