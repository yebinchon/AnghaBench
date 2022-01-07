; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_checkcons.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_checkcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_cdir = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.zip_error = type { i32 }
%struct.zip_dirent = type { i32* }

@ZIP_ER_NOZIP = common dso_local global i32 0, align 4
@LENTRYSIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_ER_INCONS = common dso_local global i32 0, align 4
@ZIP_INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.zip_cdir*, %struct.zip_error*)* @_zip_checkcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zip_checkcons(i32* %0, %struct.zip_cdir* %1, %struct.zip_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zip_cdir*, align 8
  %7 = alloca %struct.zip_error*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.zip_dirent, align 8
  store i32* %0, i32** %5, align 8
  store %struct.zip_cdir* %1, %struct.zip_cdir** %6, align 8
  store %struct.zip_error* %2, %struct.zip_error** %7, align 8
  %13 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %14 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %19 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %27 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %35

34:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %34, %17
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %194, %35
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %39 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %197

42:                                               ; preds = %36
  %43 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %44 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %42
  %55 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %56 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %54, %42
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %67 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %72 = load i32, i32* @ZIP_ER_NOZIP, align 4
  %73 = call i32 @_zip_error_set(%struct.zip_error* %71, i32 %72, i32 0)
  store i32 -1, i32* %4, align 4
  br label %214

74:                                               ; preds = %64
  %75 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %76 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %85 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %83, %92
  %94 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %95 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @_zip_string_length(i32 %102)
  %104 = add i64 %93, %103
  %105 = load i64, i64* @LENTRYSIZE, align 8
  %106 = add i64 %104, %105
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %74
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %110, %74
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %115 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %120 = load i32, i32* @ZIP_ER_NOZIP, align 4
  %121 = call i32 @_zip_error_set(%struct.zip_error* %119, i32 %120, i32 0)
  store i32 -1, i32* %4, align 4
  br label %214

122:                                              ; preds = %112
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %125 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* @SEEK_SET, align 4
  %135 = call i64 @fseeko(i32* %123, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %122
  %138 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %139 = load i32, i32* @ZIP_ER_SEEK, align 4
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @_zip_error_set(%struct.zip_error* %138, i32 %139, i32 %140)
  store i32 -1, i32* %4, align 4
  br label %214

142:                                              ; preds = %122
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %145 = call i32 @_zip_dirent_read(%struct.zip_dirent* %12, i32* %143, i32* null, i32* null, i32 1, %struct.zip_error* %144)
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 -1, i32* %4, align 4
  br label %214

148:                                              ; preds = %142
  %149 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %150 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = call i64 @_zip_headercomp(%struct.TYPE_4__* %155, %struct.zip_dirent* %12)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %160 = load i32, i32* @ZIP_ER_INCONS, align 4
  %161 = call i32 @_zip_error_set(%struct.zip_error* %159, i32 %160, i32 0)
  %162 = call i32 @_zip_dirent_finalize(%struct.zip_dirent* %12)
  store i32 -1, i32* %4, align 4
  br label %214

163:                                              ; preds = %148
  %164 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %165 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %12, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @_zip_ef_merge(i32 %172, i32* %174)
  %176 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %177 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %176, i32 0, i32 1
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  store i32 %175, i32* %183, align 4
  %184 = load %struct.zip_cdir*, %struct.zip_cdir** %6, align 8
  %185 = getelementptr inbounds %struct.zip_cdir, %struct.zip_cdir* %184, i32 0, i32 1
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = load i64, i64* %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i32 1, i32* %191, align 8
  %192 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %12, i32 0, i32 0
  store i32* null, i32** %192, align 8
  %193 = call i32 @_zip_dirent_finalize(%struct.zip_dirent* %12)
  br label %194

194:                                              ; preds = %163
  %195 = load i64, i64* %8, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %8, align 8
  br label %36

197:                                              ; preds = %36
  %198 = load i64, i64* %10, align 8
  %199 = load i64, i64* %9, align 8
  %200 = sub i64 %198, %199
  %201 = load i64, i64* @ZIP_INT64_MAX, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* %9, align 8
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  %208 = sext i32 %207 to i64
  br label %211

209:                                              ; preds = %197
  %210 = load i64, i64* @ZIP_INT64_MAX, align 8
  br label %211

211:                                              ; preds = %209, %203
  %212 = phi i64 [ %208, %203 ], [ %210, %209 ]
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %211, %158, %147, %137, %118, %70
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i64 @_zip_string_length(i32) #1

declare dso_local i64 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @_zip_dirent_read(%struct.zip_dirent*, i32*, i32*, i32*, i32, %struct.zip_error*) #1

declare dso_local i64 @_zip_headercomp(%struct.TYPE_4__*, %struct.zip_dirent*) #1

declare dso_local i32 @_zip_dirent_finalize(%struct.zip_dirent*) #1

declare dso_local i32 @_zip_ef_merge(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
