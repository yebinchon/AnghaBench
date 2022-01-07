; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_eyal1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_eyal1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@nthreads = common dso_local global i32 0, align 4
@tcs = common dso_local global %struct.TYPE_3__* null, align 8
@print_server = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@todo = common dso_local global i32 0, align 4
@mutex_stdout = common dso_local global i32 0, align 4
@mutex_todo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%10ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @nthreads, align 4
  %9 = call i64 @calloc(i32 %8, i32 32)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** @tcs, align 8
  %11 = icmp ne %struct.TYPE_3__* null, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %130, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @nthreads, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %133

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 6
  %30 = call i64 @pthread_mutex_init(i32* %29, i32* null)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = call i64 @pthread_mutex_init(i32* %38, i32* null)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = call i64 @pthread_mutex_init(i32* %47, i32* null)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = call i64 @pthread_mutex_init(i32* %56, i32* null)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = call i64 @pthread_mutex_lock(i32* %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 7
  %80 = load i64, i64* @print_server, align 8
  %81 = inttoptr i64 %80 to i8* (i8*)*
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = bitcast %struct.TYPE_3__* %85 to i8*
  %87 = call i32 @pthread_create(i32* %79, i32* null, i8* (i8*)* %81, i8* %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 %87, i32* %92, align 4
  %93 = icmp eq i32 %87, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %128, %18
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %96
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = call i32 @pthread_mutex_trylock(i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @EBUSY, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %99
  %113 = phi i1 [ true, %99 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  %124 = call i64 @pthread_mutex_unlock(i32* %123)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  br label %128

128:                                              ; preds = %118, %112
  br label %96

129:                                              ; preds = %96
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %14

133:                                              ; preds = %14
  %134 = call i32 (...) @dowork()
  store i32 -2, i32* @todo, align 4
  %135 = call i32 (...) @dosync()
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %160, %133
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @nthreads, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 0, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %140
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @pthread_join(i32 %154, i32* null)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  br label %159

159:                                              ; preds = %148, %140
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %136

163:                                              ; preds = %136
  %164 = call i64 @pthread_mutex_destroy(i32* @mutex_stdout)
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = call i64 @pthread_mutex_destroy(i32* @mutex_todo)
  %169 = icmp eq i64 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %249, %163
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @nthreads, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %252

177:                                              ; preds = %173
  %178 = load i32, i32* %6, align 4
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 0, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %177
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  br label %203

195:                                              ; preds = %177
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %195, %187
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 6
  %209 = call i64 @pthread_mutex_unlock(i32* %208)
  %210 = icmp eq i64 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 6
  %218 = call i64 @pthread_mutex_destroy(i32* %217)
  %219 = icmp eq i64 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 5
  %227 = call i64 @pthread_mutex_destroy(i32* %226)
  %228 = icmp eq i64 %227, 0
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  %236 = call i64 @pthread_mutex_destroy(i32* %235)
  %237 = icmp eq i64 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcs, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 3
  %245 = call i64 @pthread_mutex_destroy(i32* %244)
  %246 = icmp eq i64 %245, 0
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  br label %249

249:                                              ; preds = %203
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %173

252:                                              ; preds = %173
  %253 = call i32 @die(i32 0)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_mutex_trylock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @dowork(...) #1

declare dso_local i32 @dosync(...) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i64 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @die(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
