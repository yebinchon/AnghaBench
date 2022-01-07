; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_err_repeat.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_err_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, %struct.TYPE_4__*, i8*)* @mpc_err_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @mpc_err_repeat(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %247

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @mpc_calloc(i32* %20, i32 1, i32 1)
  store i8* %21, i8** %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = call i8* @mpc_realloc(i32* %24, i8** %27, i32 %33)
  %35 = bitcast i8* %34 to i8**
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8** %35, i8*** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %38, i8** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %4, align 8
  br label %247

44:                                               ; preds = %14
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add i64 %52, %58
  %60 = add i64 %59, 1
  %61 = call i8* @mpc_malloc(i32* %50, i64 %60)
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcpy(i8* %62, i8* %63)
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcat(i8* %65, i8* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @mpc_free(i32* %72, i8* %77)
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  store i8* %79, i8** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %4, align 8
  br label %247

85:                                               ; preds = %44
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %244

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %114, %90
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 2
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = add i64 %110, 2
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %120, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strlen(i8* %127)
  %129 = load i64, i64* %9, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %9, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i8**, i8*** %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %135, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strlen(i8* %142)
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %9, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, 1
  %149 = call i8* @mpc_malloc(i32* %146, i64 %148)
  store i8* %149, i8** %10, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @strcpy(i8* %150, i8* %151)
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %172, %117
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 2
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %153
  %161 = load i8*, i8** %10, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strcat(i8* %161, i8* %168)
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @strcat(i8* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %172

172:                                              ; preds = %160
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %153

175:                                              ; preds = %153
  %176 = load i8*, i8** %10, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i8**, i8*** %178, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %179, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @strcat(i8* %176, i8* %186)
  %188 = load i8*, i8** %10, align 8
  %189 = call i32 @strcat(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %190 = load i8*, i8** %10, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i8**, i8*** %192, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %193, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @strcat(i8* %190, i8* %200)
  store i32 0, i32* %8, align 4
  br label %202

202:                                              ; preds = %218, %175
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %202
  %209 = load i32*, i32** %5, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i8**, i8*** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @mpc_free(i32* %209, i8* %216)
  br label %218

218:                                              ; preds = %208
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %202

221:                                              ; preds = %202
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  %224 = load i32*, i32** %5, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i8**, i8*** %226, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = mul i64 8, %231
  %233 = trunc i64 %232 to i32
  %234 = call i8* @mpc_realloc(i32* %224, i8** %227, i32 %233)
  %235 = bitcast i8* %234 to i8**
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  store i8** %235, i8*** %237, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i8**, i8*** %240, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 0
  store i8* %238, i8** %242, align 8
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %243, %struct.TYPE_4__** %4, align 8
  br label %247

244:                                              ; preds = %85
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %247

247:                                              ; preds = %246, %221, %49, %19, %13
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %248
}

declare dso_local i8* @mpc_calloc(i32*, i32, i32) #1

declare dso_local i8* @mpc_realloc(i32*, i8**, i32) #1

declare dso_local i8* @mpc_malloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @mpc_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
