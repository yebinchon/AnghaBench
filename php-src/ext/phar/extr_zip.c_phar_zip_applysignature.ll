; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_applysignature.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_applysignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, i32 }
%struct._phar_zip_pass = type { i8**, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i8*, i32, i32, i64, i64, %struct.TYPE_10__*, i32*, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"phar error: unable to create temporary file for the signature file\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"phar error: unable to write signature to zip-based phar: %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c".phar/signature.bin\00", align 1
@PHAR_MOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"phar error: unable to create temporary file for signature\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"phar error: unable to write signature to zip-based phar %s\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct._phar_zip_pass*, %struct.TYPE_8__*)* @phar_zip_applysignature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_zip_applysignature(%struct.TYPE_10__* %0, %struct._phar_zip_pass* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct._phar_zip_pass*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct._phar_zip_pass* %1, %struct._phar_zip_pass** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %200

24:                                               ; preds = %19, %3
  %25 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 56, i1 false)
  %26 = call i8* (...) @php_stream_fopen_tmpfile()
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %32 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %33, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @FAILURE, align 4
  store i32 %35, i32* %4, align 4
  br label %202

36:                                               ; preds = %24
  %37 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %38 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @php_stream_tell(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %42 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @php_stream_seek(i32 %43, i32 0, i32 %44)
  %46 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %47 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @php_stream_copy_to_stream_ex(i32 %48, i32* %49, i32 %50, i32* null)
  %52 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %53 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @php_stream_tell(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %57 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = call i32 @php_stream_seek(i32 %58, i32 0, i32 %59)
  %61 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %62 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @php_stream_copy_to_stream_ex(i32 %63, i32* %64, i32 %65, i32* null)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %36
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @ZSTR_VAL(i64 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @ZSTR_LEN(i64 %79)
  %81 = call i64 @php_stream_write(i32* %72, i8* %76, i64 %80)
  br label %82

82:                                               ; preds = %71, %36
  %83 = load i32, i32* @FAILURE, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %87 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = call i32 @phar_create_signature(%struct.TYPE_10__* %84, i32* %85, i8** %9, i64* %8, i8** %88)
  %90 = icmp eq i32 %83, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %82
  %92 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %93 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %98 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %14, align 8
  %101 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %102 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %103, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @efree(i8* %106)
  br label %108

108:                                              ; preds = %96, %91
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @php_stream_close(i32* %109)
  %111 = load i32, i32* @FAILURE, align 4
  store i32 %111, i32* %4, align 4
  br label %202

112:                                              ; preds = %82
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 19, i32* %114, align 8
  %115 = call i8* (...) @php_stream_fopen_tmpfile()
  %116 = bitcast i8* %115 to i32*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  store i32* %116, i32** %117, align 8
  %118 = load i32, i32* @PHAR_MOD, align 4
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 7
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32 1, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %112
  %125 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %126 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %127, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* @FAILURE, align 4
  store i32 %129, i32* %4, align 4
  br label %202

130:                                              ; preds = %112
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @PHAR_SET_32(i8* %131, i64 %134)
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %137 = getelementptr inbounds i8, i8* %136, i64 4
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @PHAR_SET_32(i8* %137, i64 %138)
  %140 = call i64 @Z_UL(i32 8)
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %144 = call i64 @php_stream_write(i32* %142, i8* %143, i64 8)
  %145 = icmp ne i64 %140, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %130
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i64 @php_stream_write(i32* %149, i8* %150, i64 %151)
  %153 = icmp ne i64 %147, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %146, %130
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 @efree(i8* %155)
  %157 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %158 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %157, i32 0, i32 0
  %159 = load i8**, i8*** %158, align 8
  %160 = icmp ne i8** %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %163 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %162, i32 0, i32 0
  %164 = load i8**, i8*** %163, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %164, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %161, %154
  %170 = load i32*, i32** %12, align 8
  %171 = call i32 @php_stream_close(i32* %170)
  %172 = load i32, i32* @FAILURE, align 4
  store i32 %172, i32* %4, align 4
  br label %202

173:                                              ; preds = %146
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @efree(i8* %174)
  %176 = load i64, i64* %8, align 8
  %177 = add i64 %176, 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  store i64 %177, i64* %178, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  store %struct.TYPE_10__* %180, %struct.TYPE_10__** %181, align 8
  %182 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %183 = bitcast %struct._phar_zip_pass* %182 to i8*
  %184 = call i32 @phar_zip_changed_apply_int(%struct.TYPE_9__* %11, i8* %183)
  %185 = load i32*, i32** %12, align 8
  %186 = call i32 @php_stream_close(i32* %185)
  %187 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %188 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = icmp ne i8** %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %173
  %192 = load %struct._phar_zip_pass*, %struct._phar_zip_pass** %6, align 8
  %193 = getelementptr inbounds %struct._phar_zip_pass, %struct._phar_zip_pass* %192, i32 0, i32 0
  %194 = load i8**, i8*** %193, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @FAILURE, align 4
  store i32 %198, i32* %4, align 4
  br label %202

199:                                              ; preds = %191, %173
  br label %200

200:                                              ; preds = %199, %19
  %201 = load i32, i32* @SUCCESS, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %197, %169, %124, %108, %30
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @php_stream_fopen_tmpfile(...) #2

declare dso_local i32 @spprintf(i8**, i32, i8*, ...) #2

declare dso_local i32 @php_stream_tell(i32) #2

declare dso_local i32 @php_stream_seek(i32, i32, i32) #2

declare dso_local i32 @php_stream_copy_to_stream_ex(i32, i32*, i32, i32*) #2

declare dso_local i64 @php_stream_write(i32*, i8*, i64) #2

declare dso_local i8* @ZSTR_VAL(i64) #2

declare dso_local i64 @ZSTR_LEN(i64) #2

declare dso_local i32 @phar_create_signature(%struct.TYPE_10__*, i32*, i8**, i64*, i8**) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @php_stream_close(i32*) #2

declare dso_local i32 @PHAR_SET_32(i8*, i64) #2

declare dso_local i64 @Z_UL(i32) #2

declare dso_local i32 @phar_zip_changed_apply_int(%struct.TYPE_9__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
