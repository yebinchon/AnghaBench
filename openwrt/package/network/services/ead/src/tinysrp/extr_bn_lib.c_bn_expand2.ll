; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_lib.c_bn_expand2.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_bn_lib.c_bn_expand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64* }

@BN_FLG_STATIC_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @bn_expand2(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = call i32 @bn_check_top(%struct.TYPE_6__* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %184

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i32 @bn_check_top(%struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i32, i32* @BN_FLG_STATIC_DATA, align 4
  %26 = call i64 @BN_get_flags(%struct.TYPE_6__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %186

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %6, align 8
  store i64* %36, i64** %7, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %186

40:                                               ; preds = %29
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i64*, i64** %42, align 8
  store i64* %43, i64** %8, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %115

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 2
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %79, %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i64*, i64** %8, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %11, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %54
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %9, align 4
  %82 = load i64*, i64** %6, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 4
  store i64* %83, i64** %6, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 4
  store i64* %85, i64** %8, align 8
  br label %51

86:                                               ; preds = %51
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 3
  switch i32 %90, label %110 [
    i32 3, label %91
    i32 2, label %97
    i32 1, label %103
    i32 0, label %109
  ]

91:                                               ; preds = %86
  %92 = load i64*, i64** %8, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 2
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %86, %91
  %98 = load i64*, i64** %8, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %86, %97
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %86, %103
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i64*, i64** %112, align 8
  %114 = call i32 @free(i64* %113)
  br label %115

115:                                              ; preds = %110, %40
  %116 = load i64*, i64** %7, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i64* %116, i64** %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %124, i64 %128
  store i64* %129, i64** %6, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  %137 = ashr i32 %136, 3
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %158, %115
  %139 = load i32, i32* %9, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load i64*, i64** %6, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  store i64 0, i64* %143, align 8
  %144 = load i64*, i64** %6, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  store i64 0, i64* %145, align 8
  %146 = load i64*, i64** %6, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  store i64 0, i64* %147, align 8
  %148 = load i64*, i64** %6, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 3
  store i64 0, i64* %149, align 8
  %150 = load i64*, i64** %6, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 4
  store i64 0, i64* %151, align 8
  %152 = load i64*, i64** %6, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 5
  store i64 0, i64* %153, align 8
  %154 = load i64*, i64** %6, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 6
  store i64 0, i64* %155, align 8
  %156 = load i64*, i64** %6, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 7
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %141
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %9, align 4
  %161 = load i64*, i64** %6, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 8
  store i64* %162, i64** %6, align 8
  br label %138

163:                                              ; preds = %138
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %166, %169
  %171 = and i32 %170, 7
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %178, %163
  %173 = load i32, i32* %9, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i64*, i64** %6, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %9, align 4
  %181 = load i64*, i64** %6, align 8
  %182 = getelementptr inbounds i64, i64* %181, i32 1
  store i64* %182, i64** %6, align 8
  br label %172

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %2
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %185, %struct.TYPE_6__** %3, align 8
  br label %186

186:                                              ; preds = %184, %39, %28
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %187
}

declare dso_local i32 @bn_check_top(%struct.TYPE_6__*) #1

declare dso_local i64 @BN_get_flags(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
