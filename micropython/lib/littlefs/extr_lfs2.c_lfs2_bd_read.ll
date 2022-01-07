; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_read.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i32 (%struct.TYPE_9__*, i64, i64, i32*, i64)*, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32* }

@LFS2_BLOCK_NULL = common dso_local global i64 0, align 8
@LFS2_ERR_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i64, i64, i64, i8*, i64)* @lfs2_bd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_bd_read(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i64 %3, i64 %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %18, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @LFS2_BLOCK_NULL, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @LFS2_ASSERT(i32 %26)
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %17, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %30, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %8
  %38 = load i32, i32* @LFS2_ERR_CORRUPT, align 4
  store i32 %38, i32* %9, align 4
  br label %253

39:                                               ; preds = %8
  br label %40

40:                                               ; preds = %251, %132, %69, %39
  %41 = load i64, i64* %17, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %252

43:                                               ; preds = %40
  %44 = load i64, i64* %17, align 8
  store i64 %44, i64* %19, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %110

47:                                               ; preds = %43
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %47
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = icmp slt i64 %54, %61
  br i1 %62, label %63, label %110

63:                                               ; preds = %53
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load i64, i64* %19, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = sub nsw i64 %73, %78
  %80 = call i64 @lfs2_min(i64 %70, i64 %79)
  store i64 %80, i64* %19, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = load i64, i64* %19, align 8
  %92 = call i32 @memcpy(i32* %81, i32* %90, i64 %91)
  %93 = load i64, i64* %19, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %18, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %15, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %17, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %17, align 8
  br label %40

102:                                              ; preds = %63
  %103 = load i64, i64* %19, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i64 @lfs2_min(i64 %103, i64 %108)
  store i64 %109, i64* %19, align 8
  br label %110

110:                                              ; preds = %102, %53, %47, %43
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %173

116:                                              ; preds = %110
  %117 = load i64, i64* %15, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = icmp slt i64 %117, %124
  br i1 %125, label %126, label %173

126:                                              ; preds = %116
  %127 = load i64, i64* %15, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp sge i64 %127, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %126
  %133 = load i64, i64* %19, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = sub nsw i64 %136, %141
  %143 = call i64 @lfs2_min(i64 %133, i64 %142)
  store i64 %143, i64* %19, align 8
  %144 = load i32*, i32** %18, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %15, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load i64, i64* %19, align 8
  %155 = call i32 @memcpy(i32* %144, i32* %153, i64 %154)
  %156 = load i64, i64* %19, align 8
  %157 = load i32*, i32** %18, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %18, align 8
  %159 = load i64, i64* %19, align 8
  %160 = load i64, i64* %15, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %15, align 8
  %162 = load i64, i64* %19, align 8
  %163 = load i64, i64* %17, align 8
  %164 = sub nsw i64 %163, %162
  store i64 %164, i64* %17, align 8
  br label %40

165:                                              ; preds = %126
  %166 = load i64, i64* %19, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %15, align 8
  %171 = sub nsw i64 %169, %170
  %172 = call i64 @lfs2_min(i64 %166, i64 %171)
  store i64 %172, i64* %19, align 8
  br label %173

173:                                              ; preds = %165, %116, %110
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %174, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @LFS2_ASSERT(i32 %181)
  %183 = load i64, i64* %14, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @lfs2_aligndown(i64 %186, i32 %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* %13, align 8
  %197 = add nsw i64 %195, %196
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @lfs2_alignup(i64 %197, i32 %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @lfs2_min(i64 %203, i64 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %209, %212
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @lfs2_min(i64 %213, i64 %218)
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 3
  %226 = load i32 (%struct.TYPE_9__*, i64, i64, i32*, i64)*, i32 (%struct.TYPE_9__*, i64, i64, i32*, i64)** %225, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call i32 %226(%struct.TYPE_9__* %229, i64 %232, i64 %235, i32* %238, i64 %241)
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %20, align 4
  %244 = icmp sle i32 %243, 0
  %245 = zext i1 %244 to i32
  %246 = call i32 @LFS2_ASSERT(i32 %245)
  %247 = load i32, i32* %20, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %173
  %250 = load i32, i32* %20, align 4
  store i32 %250, i32* %9, align 4
  br label %253

251:                                              ; preds = %173
  br label %40

252:                                              ; preds = %40
  store i32 0, i32* %9, align 4
  br label %253

253:                                              ; preds = %252, %249, %37
  %254 = load i32, i32* %9, align 4
  ret i32 %254
}

declare dso_local i32 @LFS2_ASSERT(i32) #1

declare dso_local i64 @lfs2_min(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @lfs2_aligndown(i64, i32) #1

declare dso_local i64 @lfs2_alignup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
