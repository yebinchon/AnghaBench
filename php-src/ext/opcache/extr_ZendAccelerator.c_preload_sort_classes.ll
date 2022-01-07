; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_preload_sort_classes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_preload_sort_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_4__**, %struct.TYPE_4__* }

@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@ZEND_USER_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32, i32)* @preload_sort_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preload_sort_classes(i8* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %13, align 8
  br label %23

23:                                               ; preds = %148, %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = icmp ult %struct.TYPE_5__* %24, %25
  br i1 %26, label %27, label %151

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %128, %67, %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_4__* @Z_PTR(i32 %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %15, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %83

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %16, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ZEND_USER_CLASS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 1
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %12, align 8
  br label %56

56:                                               ; preds = %78, %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %59 = icmp ult %struct.TYPE_5__* %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_4__* @Z_PTR(i32 %64)
  %66 = icmp eq %struct.TYPE_4__* %61, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = bitcast %struct.TYPE_5__* %14 to i8*
  %70 = bitcast %struct.TYPE_5__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 4, i1 false)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = bitcast %struct.TYPE_5__* %71 to i8*
  %74 = bitcast %struct.TYPE_5__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = bitcast %struct.TYPE_5__* %75 to i8*
  %77 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  br label %28

78:                                               ; preds = %60
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 1
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %12, align 8
  br label %56

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81, %44
  br label %83

83:                                               ; preds = %82, %37, %28
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %148

88:                                               ; preds = %83
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %88
  store i64 0, i64* %17, align 8
  store i64 0, i64* %17, align 8
  br label %96

96:                                               ; preds = %144, %95
  %97 = load i64, i64* %17, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %147

102:                                              ; preds = %96
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = load i64, i64* %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %16, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ZEND_USER_CLASS, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %102
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 1
  store %struct.TYPE_5__* %116, %struct.TYPE_5__** %12, align 8
  br label %117

117:                                              ; preds = %139, %114
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %120 = icmp ult %struct.TYPE_5__* %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %117
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.TYPE_4__* @Z_PTR(i32 %125)
  %127 = icmp eq %struct.TYPE_4__* %122, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %130 = bitcast %struct.TYPE_5__* %14 to i8*
  %131 = bitcast %struct.TYPE_5__* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 4, i1 false)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %134 = bitcast %struct.TYPE_5__* %132 to i8*
  %135 = bitcast %struct.TYPE_5__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 4, i1 false)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %137 = bitcast %struct.TYPE_5__* %136 to i8*
  %138 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 4, i1 false)
  br label %28

139:                                              ; preds = %121
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 1
  store %struct.TYPE_5__* %141, %struct.TYPE_5__** %12, align 8
  br label %117

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %102
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %17, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %17, align 8
  br label %96

147:                                              ; preds = %96
  br label %148

148:                                              ; preds = %147, %88, %83
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 1
  store %struct.TYPE_5__* %150, %struct.TYPE_5__** %11, align 8
  br label %23

151:                                              ; preds = %23
  ret void
}

declare dso_local %struct.TYPE_4__* @Z_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
