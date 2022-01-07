; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/resowner/extr_resowner.c_ResourceArrayRemove.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/resowner/extr_resowner.c_ResourceArrayRemove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @ResourceArrayRemove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ResourceArrayRemove(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = call i64 @RESARRAY_IS_ARRAY(%struct.TYPE_4__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %109

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %59, 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i32 1, i32* %3, align 4
  br label %188

63:                                               ; preds = %29, %23
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %105, %63
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %70
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %82, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %88, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %100, 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  store i32 1, i32* %3, align 4
  br label %188

104:                                              ; preds = %70
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %64

108:                                              ; preds = %64
  br label %187

109:                                              ; preds = %2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %9, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %115, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %109
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %121
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64 %133, i64* %138, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %140, align 8
  store i32 1, i32* %3, align 4
  br label %188

143:                                              ; preds = %121, %109
  %144 = bitcast i64* %5 to i8*
  %145 = call i32 @hash_any(i8* %144, i32 8)
  %146 = call i64 @DatumGetUInt32(i32 %145)
  %147 = load i64, i64* %9, align 8
  %148 = and i64 %146, %147
  store i64 %148, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %149

149:                                              ; preds = %183, %143
  %150 = load i64, i64* %6, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = icmp ult i64 %150, %154
  br i1 %155, label %156, label %186

156:                                              ; preds = %149
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %7, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %5, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %156
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* %7, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %168, i64* %173, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %175, align 8
  store i32 1, i32* %3, align 4
  br label %188

178:                                              ; preds = %156
  %179 = load i64, i64* %7, align 8
  %180 = add i64 %179, 1
  %181 = load i64, i64* %9, align 8
  %182 = and i64 %180, %181
  store i64 %182, i64* %7, align 8
  br label %183

183:                                              ; preds = %178
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %6, align 8
  br label %149

186:                                              ; preds = %149
  br label %187

187:                                              ; preds = %186, %108
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %165, %130, %79, %38
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RESARRAY_IS_ARRAY(%struct.TYPE_4__*) #1

declare dso_local i64 @DatumGetUInt32(i32) #1

declare dso_local i32 @hash_any(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
