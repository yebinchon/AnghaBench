; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeConsolidate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeConsolidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32*, i32* }

@FREE_PAGE_LEAF_MAGIC = common dso_local global i64 0, align 8
@FPM_ITEMS_PER_LEAF_PAGE = common dso_local global i32 0, align 4
@FREE_PAGE_INTERNAL_MAGIC = common dso_local global i64 0, align 8
@FPM_ITEMS_PER_INTERNAL_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @FreePageBtreeConsolidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreePageBtreeConsolidate(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @fpm_segment_base(i32* %8)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FREE_PAGE_LEAF_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @FPM_ITEMS_PER_LEAF_PAGE, align 4
  store i32 %17, i32* %7, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FREE_PAGE_INTERNAL_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* @FPM_ITEMS_PER_INTERNAL_PAGE, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 3
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %233

37:                                               ; preds = %28
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = call %struct.TYPE_13__* @FreePageBtreeFindRightSibling(i8* %38, %struct.TYPE_13__* %39)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %6, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = icmp ne %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %135

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %47, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %135

55:                                               ; preds = %43
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FREE_PAGE_LEAF_MAGIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %55
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i32* %72, i32* %77, i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %89
  store i32 %94, i32* %92, align 8
  br label %131

95:                                               ; preds = %55
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i32* %105, i32* %110, i32 %117)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = call i32 @FreePageBtreeUpdateParentPointers(i8* %128, %struct.TYPE_13__* %129)
  br label %131

131:                                              ; preds = %95, %62
  %132 = load i32*, i32** %3, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = call i32 @FreePageBtreeRemovePage(i32* %132, %struct.TYPE_13__* %133)
  br label %233

135:                                              ; preds = %43, %37
  %136 = load i8*, i8** %5, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = call %struct.TYPE_13__* @FreePageBtreeFindLeftSibling(i8* %136, %struct.TYPE_13__* %137)
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %6, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %141, label %233

141:                                              ; preds = %135
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %145, %149
  %151 = load i32, i32* %7, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %233

153:                                              ; preds = %141
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @FREE_PAGE_LEAF_MAGIC, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %193

160:                                              ; preds = %153
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = mul i64 4, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memcpy(i32* %170, i32* %175, i32 %182)
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, %187
  store i32 %192, i32* %190, align 8
  br label %229

193:                                              ; preds = %153
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %197, i64 %202
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = mul i64 4, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @memcpy(i32* %203, i32* %208, i32 %215)
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, %220
  store i32 %225, i32* %223, align 8
  %226 = load i8*, i8** %5, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %228 = call i32 @FreePageBtreeUpdateParentPointers(i8* %226, %struct.TYPE_13__* %227)
  br label %229

229:                                              ; preds = %193, %160
  %230 = load i32*, i32** %3, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %232 = call i32 @FreePageBtreeRemovePage(i32* %230, %struct.TYPE_13__* %231)
  br label %233

233:                                              ; preds = %36, %131, %229, %141, %135
  ret void
}

declare dso_local i8* @fpm_segment_base(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_13__* @FreePageBtreeFindRightSibling(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FreePageBtreeUpdateParentPointers(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @FreePageBtreeRemovePage(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @FreePageBtreeFindLeftSibling(i8*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
