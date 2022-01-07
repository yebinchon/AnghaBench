; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_hash.c_zend_accel_hash_update.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_hash.c_zend_accel_hash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i8*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__**, i32, %struct.TYPE_5__* }

@root_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @zend_accel_hash_update(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %15, align 8
  br label %21

21:                                               ; preds = %26, %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %15, align 8
  br label %21

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @zend_inline_hash_func(i8* %32, i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i32, i32* @root_hash, align 4
  %36 = call i64 @ZCG(i32 %35)
  %37 = load i64, i64* %12, align 8
  %38 = xor i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = urem i64 %39, %42
  store i64 %43, i64* %13, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %14, align 8
  br label %50

50:                                               ; preds = %114, %31
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %118

53:                                               ; preds = %50
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %114

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @memcmp(i8* %68, i8* %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %114, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %84, align 8
  br label %92

85:                                               ; preds = %78
  %86 = load i8*, i8** %11, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_5__*
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %91, align 8
  br label %92

92:                                               ; preds = %85, %81
  br label %112

93:                                               ; preds = %73
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %111

106:                                              ; preds = %93
  %107 = load i8*, i8** %11, align 8
  %108 = bitcast i8* %107 to %struct.TYPE_5__*
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %110, align 8
  br label %111

111:                                              ; preds = %106, %96
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %6, align 8
  br label %180

114:                                              ; preds = %65, %59, %53
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %14, align 8
  br label %50

118:                                              ; preds = %50
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %180

127:                                              ; preds = %118
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %133
  store %struct.TYPE_5__* %135, %struct.TYPE_5__** %14, align 8
  %136 = load i64, i64* %10, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %127
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 5
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %141, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %155

144:                                              ; preds = %127
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = bitcast i8* %149 to %struct.TYPE_5__*
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  store %struct.TYPE_5__* %150, %struct.TYPE_5__** %152, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %144, %138
  %156 = load i64, i64* %12, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %166, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %167, i64 %168
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 4
  store %struct.TYPE_5__* %170, %struct.TYPE_5__** %172, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %175, align 8
  %177 = load i64, i64* %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %176, i64 %177
  store %struct.TYPE_5__* %173, %struct.TYPE_5__** %178, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %179, %struct.TYPE_5__** %6, align 8
  br label %180

180:                                              ; preds = %155, %126, %112
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %181
}

declare dso_local i64 @zend_inline_hash_func(i8*, i64) #1

declare dso_local i64 @ZCG(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
