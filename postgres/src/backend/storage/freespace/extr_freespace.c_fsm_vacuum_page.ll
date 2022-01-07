; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_vacuum_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_vacuum_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }

@FSM_BOTTOM_LEVEL = common dso_local global i64 0, align 8
@SlotsPerFSMPage = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32, i32, i32*)* @fsm_vacuum_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsm_vacuum_page(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_11__, align 8
  %25 = alloca %struct.TYPE_11__, align 8
  %26 = alloca %struct.TYPE_11__, align 8
  %27 = alloca %struct.TYPE_11__, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_11__, align 8
  %30 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  store i64 %1, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  store i64 %2, i64* %32, align 8
  store i32 %0, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @fsm_readbuf(i32 %33, i64 %36, i64 %38, i32 0)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @BufferIsValid(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %6
  %44 = load i32*, i32** %12, align 8
  store i32 1, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %218

45:                                               ; preds = %6
  %46 = load i32*, i32** %12, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @BufferGetPage(i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FSM_BOTTOM_LEVEL, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %208

54:                                               ; preds = %47
  store i32 0, i32* %23, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call { i64, i64 } @fsm_get_location(i32 %55, i32* %18)
  %57 = bitcast %struct.TYPE_11__* %24 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i64, i64 } %56, 0
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i64, i64 } %56, 1
  store i64 %61, i64* %60, align 8
  %62 = bitcast %struct.TYPE_11__* %16 to i8*
  %63 = bitcast %struct.TYPE_11__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call { i64, i64 } @fsm_get_location(i32 %65, i32* %19)
  %67 = bitcast %struct.TYPE_11__* %25 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = extractvalue { i64, i64 } %66, 0
  store i64 %69, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = extractvalue { i64, i64 } %66, 1
  store i64 %71, i64* %70, align 8
  %72 = bitcast %struct.TYPE_11__* %17 to i8*
  %73 = bitcast %struct.TYPE_11__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  br label %74

74:                                               ; preds = %80, %54
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %74
  %81 = bitcast %struct.TYPE_11__* %16 to { i64, i64 }*
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call { i64, i64 } @fsm_get_parent(i64 %83, i64 %85, i32* %18)
  %87 = bitcast %struct.TYPE_11__* %26 to { i64, i64 }*
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 0
  %89 = extractvalue { i64, i64 } %86, 0
  store i64 %89, i64* %88, align 8
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 1
  %91 = extractvalue { i64, i64 } %86, 1
  store i64 %91, i64* %90, align 8
  %92 = bitcast %struct.TYPE_11__* %16 to i8*
  %93 = bitcast %struct.TYPE_11__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = bitcast %struct.TYPE_11__* %17 to { i64, i64 }*
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call { i64, i64 } @fsm_get_parent(i64 %96, i64 %98, i32* %19)
  %100 = bitcast %struct.TYPE_11__* %27 to { i64, i64 }*
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %100, i32 0, i32 0
  %102 = extractvalue { i64, i64 } %99, 0
  store i64 %102, i64* %101, align 8
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %100, i32 0, i32 1
  %104 = extractvalue { i64, i64 } %99, 1
  store i64 %104, i64* %103, align 8
  %105 = bitcast %struct.TYPE_11__* %17 to i8*
  %106 = bitcast %struct.TYPE_11__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  br label %74

107:                                              ; preds = %74
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %109, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %21, align 4
  br label %132

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @SlotsPerFSMPage, align 4
  store i32 %129, i32* %21, align 4
  br label %131

130:                                              ; preds = %122
  store i32 0, i32* %21, align 4
  br label %131

131:                                              ; preds = %130, %128
  br label %132

132:                                              ; preds = %131, %120
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %19, align 4
  store i32 %139, i32* %22, align 4
  br label %151

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @SlotsPerFSMPage, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %22, align 4
  br label %150

149:                                              ; preds = %140
  store i32 -1, i32* %22, align 4
  br label %150

150:                                              ; preds = %149, %146
  br label %151

151:                                              ; preds = %150, %138
  %152 = load i32, i32* %21, align 4
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %204, %151
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %22, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %207

157:                                              ; preds = %153
  %158 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %159 = load i32, i32* %23, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %183, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %20, align 4
  %164 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call { i64, i64 } @fsm_get_child(i64 %166, i64 %168, i32 %163)
  %170 = bitcast %struct.TYPE_11__* %29 to { i64, i64 }*
  %171 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 0
  %172 = extractvalue { i64, i64 } %169, 0
  store i64 %172, i64* %171, align 8
  %173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 1
  %174 = extractvalue { i64, i64 } %169, 1
  store i64 %174, i64* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = bitcast %struct.TYPE_11__* %29 to { i64, i64 }*
  %178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %177, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @fsm_vacuum_page(i32 %162, i64 %179, i64 %181, i32 %175, i32 %176, i32* %23)
  store i32 %182, i32* %28, align 4
  br label %184

183:                                              ; preds = %157
  store i32 0, i32* %28, align 4
  br label %184

184:                                              ; preds = %183, %161
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @fsm_get_avail(i32 %185, i32 %186)
  %188 = load i32, i32* %28, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %193 = call i32 @LockBuffer(i32 %191, i32 %192)
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %28, align 4
  %197 = call i32 @fsm_set_avail(i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @MarkBufferDirtyHint(i32 %198, i32 0)
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %202 = call i32 @LockBuffer(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %190, %184
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %153

207:                                              ; preds = %153
  br label %208

208:                                              ; preds = %207, %47
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @fsm_get_max_avail(i32 %209)
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %14, align 4
  %212 = call i64 @PageGetContents(i32 %211)
  %213 = inttoptr i64 %212 to %struct.TYPE_10__*
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @ReleaseBuffer(i32 %215)
  %217 = load i32, i32* %15, align 4
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %208, %43
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @fsm_readbuf(i32, i64, i64, i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local { i64, i64 } @fsm_get_location(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @fsm_get_parent(i64, i64, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local { i64, i64 } @fsm_get_child(i64, i64, i32) #1

declare dso_local i32 @fsm_get_avail(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @fsm_set_avail(i32, i32, i32) #1

declare dso_local i32 @MarkBufferDirtyHint(i32, i32) #1

declare dso_local i32 @fsm_get_max_avail(i32) #1

declare dso_local i64 @PageGetContents(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
