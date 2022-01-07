; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_getread.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_getread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32* }

@LFS2_ERR_CORRUPT = common dso_local global i32 0, align 4
@LFS2_BLOCK_INLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i64, i32, i32, i64, i8*, i64)* @lfs2_dir_getread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_dir_getread(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, i64 %4, i32 %5, i32 %6, i64 %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %12, align 8
  store i32* %1, i32** %13, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %22, align 8
  %27 = load i64, i64* %19, align 8
  %28 = load i64, i64* %21, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %10
  %37 = load i32, i32* @LFS2_ERR_CORRUPT, align 4
  store i32 %37, i32* %11, align 4
  br label %222

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %220, %131, %68, %38
  %40 = load i64, i64* %21, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %221

42:                                               ; preds = %39
  %43 = load i64, i64* %21, align 8
  store i64 %43, i64* %23, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %109

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LFS2_BLOCK_INLINE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %109

52:                                               ; preds = %46
  %53 = load i64, i64* %19, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = icmp slt i64 %53, %60
  br i1 %61, label %62, label %109

62:                                               ; preds = %52
  %63 = load i64, i64* %19, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %62
  %69 = load i64, i64* %23, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = sub nsw i64 %72, %77
  %79 = call i64 @lfs2_min(i64 %69, i64 %78)
  store i64 %79, i64* %23, align 8
  %80 = load i32*, i32** %22, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  %90 = load i64, i64* %23, align 8
  %91 = call i32 @memcpy(i32* %80, i32* %89, i64 %90)
  %92 = load i64, i64* %23, align 8
  %93 = load i32*, i32** %22, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %92
  store i32* %94, i32** %22, align 8
  %95 = load i64, i64* %23, align 8
  %96 = load i64, i64* %19, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %19, align 8
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* %21, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %21, align 8
  br label %39

101:                                              ; preds = %62
  %102 = load i64, i64* %23, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %19, align 8
  %107 = sub nsw i64 %105, %106
  %108 = call i64 @lfs2_min(i64 %102, i64 %107)
  store i64 %108, i64* %23, align 8
  br label %109

109:                                              ; preds = %101, %52, %46, %42
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LFS2_BLOCK_INLINE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %172

115:                                              ; preds = %109
  %116 = load i64, i64* %19, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = icmp slt i64 %116, %123
  br i1 %124, label %125, label %172

125:                                              ; preds = %115
  %126 = load i64, i64* %19, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %126, %129
  br i1 %130, label %131, label %164

131:                                              ; preds = %125
  %132 = load i64, i64* %23, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %19, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  %141 = sub nsw i64 %135, %140
  %142 = call i64 @lfs2_min(i64 %132, i64 %141)
  store i64 %142, i64* %23, align 8
  %143 = load i32*, i32** %22, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %19, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  %153 = load i64, i64* %23, align 8
  %154 = call i32 @memcpy(i32* %143, i32* %152, i64 %153)
  %155 = load i64, i64* %23, align 8
  %156 = load i32*, i32** %22, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 %155
  store i32* %157, i32** %22, align 8
  %158 = load i64, i64* %23, align 8
  %159 = load i64, i64* %19, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %19, align 8
  %161 = load i64, i64* %23, align 8
  %162 = load i64, i64* %21, align 8
  %163 = sub nsw i64 %162, %161
  store i64 %163, i64* %21, align 8
  br label %39

164:                                              ; preds = %125
  %165 = load i64, i64* %23, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %19, align 8
  %170 = sub nsw i64 %168, %169
  %171 = call i64 @lfs2_min(i64 %165, i64 %170)
  store i64 %171, i64* %23, align 8
  br label %172

172:                                              ; preds = %164, %115, %109
  %173 = load i64, i64* @LFS2_BLOCK_INLINE, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %19, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @lfs2_aligndown(i64 %176, i32 %181)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load i64, i64* %19, align 8
  %186 = load i64, i64* %16, align 8
  %187 = add nsw i64 %185, %186
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @lfs2_alignup(i64 %187, i32 %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @lfs2_min(i64 %193, i64 %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  store i64 %199, i64* %201, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @lfs2_dir_getslice(%struct.TYPE_9__* %202, i32* %203, i32 %204, i32 %205, i64 %208, i32* %211, i64 %214)
  store i32 %215, i32* %24, align 4
  %216 = load i32, i32* %24, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %172
  %219 = load i32, i32* %24, align 4
  store i32 %219, i32* %11, align 4
  br label %222

220:                                              ; preds = %172
  br label %39

221:                                              ; preds = %39
  store i32 0, i32* %11, align 4
  br label %222

222:                                              ; preds = %221, %218, %36
  %223 = load i32, i32* %11, align 4
  ret i32 %223
}

declare dso_local i64 @lfs2_min(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @lfs2_aligndown(i64, i32) #1

declare dso_local i64 @lfs2_alignup(i64, i32) #1

declare dso_local i32 @lfs2_dir_getslice(%struct.TYPE_9__*, i32*, i32, i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
