; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-dedup.c_dedup_is_duplicate.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-dedup.c_dedup_is_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DedupTable = type { %struct.DedupEntry** }
%struct.DedupEntry = type { i32, i32, i32, i32 }

@DEDUP_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dedup_is_duplicate(%struct.DedupTable* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.DedupTable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.DedupEntry*, align 8
  %14 = alloca i32, align 4
  store %struct.DedupTable* %0, %struct.DedupTable** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add i32 %15, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = lshr i32 %19, 16
  %21 = add i32 %18, %20
  %22 = xor i32 %17, %21
  %23 = load i32, i32* %8, align 4
  %24 = lshr i32 %23, 24
  %25 = xor i32 %22, %24
  %26 = load i32, i32* %11, align 4
  %27 = xor i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @DEDUP_ENTRIES, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = load %struct.DedupTable*, %struct.DedupTable** %7, align 8
  %33 = getelementptr inbounds %struct.DedupTable, %struct.DedupTable* %32, i32 0, i32 0
  %34 = load %struct.DedupEntry**, %struct.DedupEntry*** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.DedupEntry*, %struct.DedupEntry** %34, i64 %36
  %38 = load %struct.DedupEntry*, %struct.DedupEntry** %37, align 8
  store %struct.DedupEntry* %38, %struct.DedupEntry** %13, align 8
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %216, %5
  %40 = load i32, i32* %14, align 4
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %219

42:                                               ; preds = %39
  %43 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %43, i64 %45
  %47 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %215

51:                                               ; preds = %42
  %52 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %52, i64 %54
  %56 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %215

60:                                               ; preds = %51
  %61 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %61, i64 %63
  %65 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %215

69:                                               ; preds = %60
  %70 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %70, i64 %72
  %74 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %215

78:                                               ; preds = %69
  %79 = load i32, i32* %14, align 4
  %80 = icmp ugt i32 %79, 0
  br i1 %80, label %81, label %214

81:                                               ; preds = %78
  %82 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %83 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %82, i64 0
  %84 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %86, i64 %88
  %90 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, %85
  store i32 %92, i32* %90, align 4
  %93 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %94 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %93, i64 0
  %95 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %97, i64 %99
  %101 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, %96
  store i32 %103, i32* %101, align 4
  %104 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %105 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %104, i64 0
  %106 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %108, i64 %110
  %112 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %113, %107
  store i32 %114, i32* %112, align 4
  %115 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %116 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %115, i64 0
  %117 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %120 = load i32, i32* %14, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %119, i64 %121
  %123 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, %118
  store i32 %125, i32* %123, align 4
  %126 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %126, i64 %128
  %130 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %133 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %132, i64 0
  %134 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %137, i64 %139
  %141 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %144 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %143, i64 0
  %145 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %146, %142
  store i32 %147, i32* %145, align 4
  %148 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %149 = load i32, i32* %14, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %148, i64 %150
  %152 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %155 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %154, i64 0
  %156 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, %153
  store i32 %158, i32* %156, align 4
  %159 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %160 = load i32, i32* %14, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %159, i64 %161
  %163 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %166 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %165, i64 0
  %167 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %168, %164
  store i32 %169, i32* %167, align 4
  %170 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %171 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %170, i64 0
  %172 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %175 = load i32, i32* %14, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %174, i64 %176
  %178 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = xor i32 %179, %173
  store i32 %180, i32* %178, align 4
  %181 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %182 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %181, i64 0
  %183 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %186 = load i32, i32* %14, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %185, i64 %187
  %189 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %190, %184
  store i32 %191, i32* %189, align 4
  %192 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %193 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %192, i64 0
  %194 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %197 = load i32, i32* %14, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %196, i64 %198
  %200 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = xor i32 %201, %195
  store i32 %202, i32* %200, align 4
  %203 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %204 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %203, i64 0
  %205 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %208 = load i32, i32* %14, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %207, i64 %209
  %211 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = xor i32 %212, %206
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %81, %78
  store i32 1, i32* %6, align 4
  br label %240

215:                                              ; preds = %69, %60, %51, %42
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %14, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %39

219:                                              ; preds = %39
  %220 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %221 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %222 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %221, i64 1
  %223 = call i32 @memmove(%struct.DedupEntry* %220, %struct.DedupEntry* %222, i32 48)
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %226 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %225, i64 0
  %227 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %230 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %229, i64 0
  %231 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %234 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %233, i64 0
  %235 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.DedupEntry*, %struct.DedupEntry** %13, align 8
  %238 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %237, i64 0
  %239 = getelementptr inbounds %struct.DedupEntry, %struct.DedupEntry* %238, i32 0, i32 3
  store i32 %236, i32* %239, align 4
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %219, %214
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i32 @memmove(%struct.DedupEntry*, %struct.DedupEntry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
