; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_add_usages.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_add_usages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@ZEND_OP_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32)* @add_usages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_usages(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %9, align 8
  br label %30

30:                                               ; preds = %40, %21
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @zend_bitset_incl(i32 %31, i64 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = call %struct.TYPE_15__* @zend_ssa_next_use_phi(%struct.TYPE_17__* %36, i32 %37, %struct.TYPE_15__* %38)
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %9, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %30, label %43

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %160

54:                                               ; preds = %44
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %156, %54
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %68
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %11, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @zend_bitset_incl(i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %74, %63
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @zend_bitset_incl(i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @zend_bitset_incl(i32 %97, i64 %100)
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ZEND_OP_DATA, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %149

113:                                              ; preds = %102
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 -1
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %11, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @zend_bitset_incl(i32 %121, i64 %124)
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @zend_bitset_incl(i32 %132, i64 %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @zend_bitset_incl(i32 %143, i64 %146)
  br label %148

148:                                              ; preds = %142, %137
  br label %149

149:                                              ; preds = %148, %102
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @zend_ssa_next_use(%struct.TYPE_16__* %152, i32 %153, i32 %154)
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %10, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %63, label %159

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %159, %44
  ret void
}

declare dso_local i32 @zend_bitset_incl(i32, i64) #1

declare dso_local %struct.TYPE_15__* @zend_ssa_next_use_phi(%struct.TYPE_17__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @zend_ssa_next_use(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
