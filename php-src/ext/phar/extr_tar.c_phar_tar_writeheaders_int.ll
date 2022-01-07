; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_tar_writeheaders_int.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_tar_writeheaders_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i32*, %struct.TYPE_10__*, i64, i8*, i32, i64, i64 }
%struct.TYPE_10__ = type { i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._phar_pass_tar_info = type { i32, i32, i32, i64 }

@ZEND_HASH_APPLY_KEEP = common dso_local global i32 0, align 4
@ZEND_HASH_APPLY_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"tar-based phar \22%s\22 cannot be created, filename \22%s\22 is too long for tar file format\00", align 1
@ZEND_HASH_APPLY_STOP = common dso_local global i32 0, align 4
@PHAR_ENT_PERM_MASK = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"tar-based phar \22%s\22 cannot be created, filename \22%s\22 is too large for tar file format\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"tar-based phar \22%s\22 cannot be created, file modification time of file \22%s\22 is too large for tar file format\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"tar-based phar \22%s\22 cannot be created, link \22%s\22 is too long for format\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ustar\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"tar-based phar \22%s\22 cannot be created, checksum of file \22%s\22 is too large for tar file format\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"tar-based phar \22%s\22 cannot be created, header for  file \22%s\22 could not be written\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [95 x i8] c"tar-based phar \22%s\22 cannot be created, contents of file \22%s\22 could not be written, seek failed\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [82 x i8] c"tar-based phar \22%s\22 cannot be created, contents of file \22%s\22 could not be written\00", align 1
@PHAR_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @phar_tar_writeheaders_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_tar_writeheaders_int(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct._phar_pass_tar_info*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct._phar_pass_tar_info*
  store %struct._phar_pass_tar_info* %12, %struct._phar_pass_tar_info** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 17
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %18, i32* %3, align 4
  br label %524

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 16
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ZEND_HASH_APPLY_REMOVE, align 4
  store i32 %30, i32* %3, align 4
  br label %524

31:                                               ; preds = %24
  %32 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %32, i32* %3, align 4
  br label %524

33:                                               ; preds = %19
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 12
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @phar_add_virtual_dirs(%struct.TYPE_10__* %36, i8* %39, i32 %42)
  %44 = bitcast %struct.TYPE_8__* %6 to i8*
  %45 = call i32 @memset(i8* %44, i32 0, i32 40)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 100
  br i1 %49, label %50, label %167

50:                                               ; preds = %33
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 256
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %57 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %62 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 12
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @spprintf(i64 %63, i32 4096, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %68, i8* %71)
  br label %73

73:                                               ; preds = %60, %55
  %74 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %74, i32* %3, align 4
  br label %524

75:                                               ; preds = %50
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 -101
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %97, %75
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 47
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ false, %85 ], [ %94, %90 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  br label %85

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %105 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = icmp sgt i64 %111, 155
  br i1 %112, label %113, label %133

113:                                              ; preds = %104, %100
  %114 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %115 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %120 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 12
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @spprintf(i64 %121, i32 4096, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %126, i8* %129)
  br label %131

131:                                              ; preds = %118, %113
  %132 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %132, i32* %3, align 4
  br label %524

133:                                              ; preds = %104
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = ptrtoint i8* %139 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memcpy(i32 %135, i8* %138, i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %10, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = ptrtoint i8* %157 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sub nsw i64 %155, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memcpy(i32 %149, i8* %151, i32 %165)
  br label %177

167:                                              ; preds = %33
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @memcpy(i32 %169, i8* %172, i32 %175)
  br label %177

177:                                              ; preds = %167, %133
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @PHAR_ENT_PERM_MASK, align 4
  %184 = and i32 %182, %183
  %185 = call i64 @phar_tar_octal(i32 %179, i32 %184, i32 3)
  %186 = load i64, i64* @FAILURE, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @phar_tar_octal(i32 %188, i32 %191, i32 3)
  %193 = icmp eq i64 %186, %192
  br i1 %193, label %194, label %214

194:                                              ; preds = %177
  %195 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %196 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %194
  %200 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %201 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 12
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @spprintf(i64 %202, i32 4096, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %207, i8* %210)
  br label %212

212:                                              ; preds = %199, %194
  %213 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %213, i32* %3, align 4
  br label %524

214:                                              ; preds = %177
  %215 = load i64, i64* @FAILURE, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @phar_tar_octal(i32 %217, i32 %220, i32 3)
  %222 = icmp eq i64 %215, %221
  br i1 %222, label %223, label %243

223:                                              ; preds = %214
  %224 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %225 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %223
  %229 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %230 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 12
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @spprintf(i64 %231, i32 4096, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 %236, i8* %239)
  br label %241

241:                                              ; preds = %228, %223
  %242 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %242, i32* %3, align 4
  br label %524

243:                                              ; preds = %214
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 15
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32 %246, i32* %247, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 6
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %282

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 6
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @strlcpy(i32 %254, i8* %257, i32 4)
  %259 = sext i32 %258 to i64
  %260 = icmp uge i64 %259, 4
  br i1 %260, label %261, label %281

261:                                              ; preds = %252
  %262 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %263 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %261
  %267 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %268 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 12
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 6
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @spprintf(i64 %269, i32 4096, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %274, i8* %277)
  br label %279

279:                                              ; preds = %266, %261
  %280 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %280, i32* %3, align 4
  br label %524

281:                                              ; preds = %252
  br label %282

282:                                              ; preds = %281, %243
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @memcpy(i32 %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @memcpy(i32 %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @memcpy(i32 %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %292 = bitcast %struct.TYPE_8__* %6 to i8*
  %293 = call i32 @phar_tar_checksum(i8* %292, i32 40)
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 7
  store i32 %293, i32* %295, align 8
  %296 = load i64, i64* @FAILURE, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = call i64 @phar_tar_octal(i32 %298, i32 %301, i32 3)
  %303 = icmp eq i64 %296, %302
  br i1 %303, label %304, label %324

304:                                              ; preds = %282
  %305 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %306 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %304
  %310 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %311 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 12
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 1
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @spprintf(i64 %312, i32 4096, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0), i32 %317, i8* %320)
  br label %322

322:                                              ; preds = %309, %304
  %323 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %323, i32* %3, align 4
  br label %524

324:                                              ; preds = %282
  %325 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %326 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = call i8* @php_stream_tell(i32 %327)
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 14
  store i8* %328, i8** %330, align 8
  %331 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %332 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = bitcast %struct.TYPE_8__* %6 to i8*
  %335 = call i32 @php_stream_write(i32 %333, i8* %334, i32 40)
  %336 = sext i32 %335 to i64
  %337 = icmp ne i64 40, %336
  br i1 %337, label %338, label %358

338:                                              ; preds = %324
  %339 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %340 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %339, i32 0, i32 3
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %338
  %344 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %345 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 12
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @spprintf(i64 %346, i32 4096, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i32 %351, i8* %354)
  br label %356

356:                                              ; preds = %343, %338
  %357 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %357, i32* %3, align 4
  br label %524

358:                                              ; preds = %324
  %359 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %360 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i8* @php_stream_tell(i32 %361)
  %363 = ptrtoint i8* %362 to i64
  store i64 %363, i64* %7, align 8
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %452

368:                                              ; preds = %358
  %369 = load i64, i64* @FAILURE, align 8
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %371 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %372 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = call i64 @phar_open_entry_fp(%struct.TYPE_9__* %370, i64 %373, i32 0)
  %375 = icmp eq i64 %369, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %368
  %377 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %377, i32* %3, align 4
  br label %524

378:                                              ; preds = %368
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %380 = load i32, i32* @SEEK_SET, align 4
  %381 = call i32 @phar_seek_efp(%struct.TYPE_9__* %379, i32 0, i32 %380, i32 0, i32 0)
  %382 = icmp eq i32 -1, %381
  br i1 %382, label %383, label %403

383:                                              ; preds = %378
  %384 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %385 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %384, i32 0, i32 3
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %383
  %389 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %390 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 12
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 @spprintf(i64 %391, i32 4096, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.9, i64 0, i64 0), i32 %396, i8* %399)
  br label %401

401:                                              ; preds = %388, %383
  %402 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %402, i32* %3, align 4
  br label %524

403:                                              ; preds = %378
  %404 = load i64, i64* @SUCCESS, align 8
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %406 = call i32 @phar_get_efp(%struct.TYPE_9__* %405, i32 0)
  %407 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %408 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 8
  %413 = call i64 @php_stream_copy_to_stream_ex(i32 %406, i32 %409, i32 %412, i32* null)
  %414 = icmp ne i64 %404, %413
  br i1 %414, label %415, label %435

415:                                              ; preds = %403
  %416 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %417 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %416, i32 0, i32 3
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %433

420:                                              ; preds = %415
  %421 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %422 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %421, i32 0, i32 3
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 12
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 1
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @spprintf(i64 %423, i32 4096, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0), i32 %428, i8* %431)
  br label %433

433:                                              ; preds = %420, %415
  %434 = load i32, i32* @ZEND_HASH_APPLY_STOP, align 4
  store i32 %434, i32* %3, align 4
  br label %524

435:                                              ; preds = %403
  %436 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %437 = call i32 @memset(i8* %436, i32 0, i32 512)
  %438 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %439 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 8
  %445 = add nsw i32 %444, 511
  %446 = and i32 %445, -512
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 8
  %450 = sub nsw i32 %446, %449
  %451 = call i32 @php_stream_write(i32 %440, i8* %441, i32 %450)
  br label %452

452:                                              ; preds = %435, %358
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 13
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %474, label %457

457:                                              ; preds = %452
  %458 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %474

462:                                              ; preds = %457
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 8
  %465 = load i32, i32* %464, align 4
  switch i32 %465, label %472 [
    i32 129, label %466
    i32 128, label %469
  ]

466:                                              ; preds = %462
  %467 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %468 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %467, i32 0, i32 1
  store i32 0, i32* %468, align 4
  br label %473

469:                                              ; preds = %462
  %470 = load %struct._phar_pass_tar_info*, %struct._phar_pass_tar_info** %8, align 8
  %471 = getelementptr inbounds %struct._phar_pass_tar_info, %struct._phar_pass_tar_info* %470, i32 0, i32 0
  store i32 0, i32* %471, align 8
  br label %472

472:                                              ; preds = %462, %469
  br label %473

473:                                              ; preds = %472, %466
  br label %474

474:                                              ; preds = %473, %457, %452
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 13
  store i64 0, i64* %476, align 8
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 8
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @PHAR_MOD, align 4
  %481 = icmp eq i32 %479, %480
  br i1 %481, label %482, label %515

482:                                              ; preds = %474
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 11
  %485 = load i32*, i32** %484, align 8
  %486 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %486, i32 0, i32 12
  %488 = load %struct.TYPE_10__*, %struct.TYPE_10__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %488, i32 0, i32 1
  %490 = load i32*, i32** %489, align 8
  %491 = icmp ne i32* %485, %490
  br i1 %491, label %492, label %515

492:                                              ; preds = %482
  %493 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 11
  %495 = load i32*, i32** %494, align 8
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 12
  %498 = load %struct.TYPE_10__*, %struct.TYPE_10__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %498, i32 0, i32 0
  %500 = load i32*, i32** %499, align 8
  %501 = icmp ne i32* %495, %500
  br i1 %501, label %502, label %515

502:                                              ; preds = %492
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %512, label %507

507:                                              ; preds = %502
  %508 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %508, i32 0, i32 11
  %510 = load i32*, i32** %509, align 8
  %511 = call i32 @php_stream_close(i32* %510)
  br label %512

512:                                              ; preds = %507, %502
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 11
  store i32* null, i32** %514, align 8
  br label %515

515:                                              ; preds = %512, %492, %482, %474
  %516 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %517 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %516, i32 0, i32 8
  store i32 129, i32* %517, align 4
  %518 = load i64, i64* %7, align 8
  %519 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i32 0, i32 10
  store i64 %518, i64* %520, align 8
  %521 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %521, i32 0, i32 9
  store i64 %518, i64* %522, align 8
  %523 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %523, i32* %3, align 4
  br label %524

524:                                              ; preds = %515, %433, %401, %376, %356, %322, %279, %241, %212, %131, %73, %31, %29, %17
  %525 = load i32, i32* %3, align 4
  ret i32 %525
}

declare dso_local i32 @phar_add_virtual_dirs(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spprintf(i64, i32, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @phar_tar_octal(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @phar_tar_checksum(i8*, i32) #1

declare dso_local i8* @php_stream_tell(i32) #1

declare dso_local i32 @php_stream_write(i32, i8*, i32) #1

declare dso_local i64 @phar_open_entry_fp(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @phar_seek_efp(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i64 @php_stream_copy_to_stream_ex(i32, i32, i32, i32*) #1

declare dso_local i32 @phar_get_efp(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @php_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
