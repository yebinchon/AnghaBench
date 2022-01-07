; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_func_interceptors.c_phar_fancy_stat.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_func_interceptors.c_phar_fancy_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ino\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nlink\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rdev\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@__const.phar_fancy_stat.stat_sb_names = private unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)], align 16
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@E_NOTICE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"Unknown file type (%u)\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@RETURN_TRUE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"Didn't understand stat call\00", align 1
@RETURN_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32*)* @phar_fancy_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phar_fancy_stat(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [13 x i8*], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %28 = load i32, i32* @S_IROTH, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* @S_IWOTH, align 4
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* @S_IXOTH, align 4
  store i32 %30, i32* %22, align 4
  %31 = bitcast [13 x i8*]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([13 x i8*]* @__const.phar_fancy_stat.stat_sb_names to i8*), i64 104, i1 false)
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 138
  br i1 %33, label %34, label %96

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 137
  br i1 %36, label %37, label %96

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 (...) @getuid()
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @S_IRUSR, align 4
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* @S_IWUSR, align 4
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* @S_IXUSR, align 4
  store i32 %46, i32* %22, align 4
  br label %95

47:                                               ; preds = %37
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 (...) @getgid()
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @S_IRGRP, align 4
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* @S_IWGRP, align 4
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* @S_IXGRP, align 4
  store i32 %56, i32* %22, align 4
  br label %94

57:                                               ; preds = %47
  %58 = call i32 @getgroups(i32 0, i64* null)
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %24, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load i32, i32* %24, align 4
  %63 = call i64 @safe_emalloc(i32 %62, i32 8, i32 0)
  %64 = inttoptr i64 %63 to i64*
  store i64* %64, i64** %27, align 8
  %65 = load i32, i32* %24, align 4
  %66 = load i64*, i64** %27, align 8
  %67 = call i32 @getgroups(i32 %65, i64* %66)
  store i32 %67, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %68

68:                                               ; preds = %87, %61
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %25, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %27, align 8
  %77 = load i32, i32* %26, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @S_IRGRP, align 4
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* @S_IWGRP, align 4
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* @S_IXGRP, align 4
  store i32 %85, i32* %22, align 4
  br label %90

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %26, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %26, align 4
  br label %68

90:                                               ; preds = %82, %68
  %91 = load i64*, i64** %27, align 8
  %92 = call i32 @efree(i64* %91)
  br label %93

93:                                               ; preds = %90, %57
  br label %94

94:                                               ; preds = %93, %53
  br label %95

95:                                               ; preds = %94, %43
  br label %96

96:                                               ; preds = %95, %34, %3
  %97 = load i32, i32* %5, align 4
  switch i32 %97, label %414 [
    i32 133, label %98
    i32 143, label %103
    i32 132, label %108
    i32 134, label %113
    i32 144, label %119
    i32 147, label %125
    i32 135, label %130
    i32 146, label %135
    i32 130, label %140
    i32 138, label %167
    i32 139, label %176
    i32 137, label %185
    i32 141, label %203
    i32 142, label %209
    i32 140, label %215
    i32 145, label %221
    i32 136, label %223
    i32 131, label %223
  ]

98:                                               ; preds = %96
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @RETURN_LONG(i32 %101)
  br label %103

103:                                              ; preds = %96, %98
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @RETURN_LONG(i32 %106)
  br label %108

108:                                              ; preds = %96, %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @RETURN_LONG(i32 %111)
  br label %113

113:                                              ; preds = %96, %108
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @RETURN_LONG(i32 %117)
  br label %119

119:                                              ; preds = %96, %113
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @RETURN_LONG(i32 %123)
  br label %125

125:                                              ; preds = %96, %119
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @RETURN_LONG(i32 %128)
  br label %130

130:                                              ; preds = %96, %125
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @RETURN_LONG(i32 %133)
  br label %135

135:                                              ; preds = %96, %130
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @RETURN_LONG(i32 %138)
  br label %140

140:                                              ; preds = %96, %135
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @S_ISLNK(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = call i32 @RETURN_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %140
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @S_IFMT, align 4
  %153 = and i32 %151, %152
  switch i32 %153, label %158 [
    i32 129, label %154
    i32 128, label %156
  ]

154:                                              ; preds = %148
  %155 = call i32 @RETURN_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %156

156:                                              ; preds = %148, %154
  %157 = call i32 @RETURN_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %148
  %159 = load i32, i32* @E_NOTICE, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @S_IFMT, align 4
  %164 = and i32 %162, %163
  %165 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %164)
  %166 = call i32 @RETURN_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %167

167:                                              ; preds = %96, %158
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %21, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @RETURN_BOOL(i32 %174)
  br label %176

176:                                              ; preds = %96, %167
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %20, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @RETURN_BOOL(i32 %183)
  br label %185

185:                                              ; preds = %96, %176
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %22, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @S_ISDIR(i32 %195)
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  br label %199

199:                                              ; preds = %192, %185
  %200 = phi i1 [ false, %185 ], [ %198, %192 ]
  %201 = zext i1 %200 to i32
  %202 = call i32 @RETURN_BOOL(i32 %201)
  br label %203

203:                                              ; preds = %96, %199
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @S_ISREG(i32 %206)
  %208 = call i32 @RETURN_BOOL(i32 %207)
  br label %209

209:                                              ; preds = %96, %203
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @S_ISDIR(i32 %212)
  %214 = call i32 @RETURN_BOOL(i32 %213)
  br label %215

215:                                              ; preds = %96, %209
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @S_ISLNK(i32 %218)
  %220 = call i32 @RETURN_BOOL(i32 %219)
  br label %221

221:                                              ; preds = %96, %215
  %222 = load i32, i32* @RETURN_TRUE, align 4
  br label %223

223:                                              ; preds = %96, %96, %221
  %224 = load i32*, i32** %6, align 8
  %225 = call i32 @array_init(i32* %224)
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @ZVAL_LONG(i32* %7, i32 %228)
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @ZVAL_LONG(i32* %8, i32 %232)
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @ZVAL_LONG(i32* %9, i32 %236)
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ZVAL_LONG(i32* %10, i32 %240)
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @ZVAL_LONG(i32* %11, i32 %245)
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 @ZVAL_LONG(i32* %12, i32 %250)
  %252 = call i32 @ZVAL_LONG(i32* %13, i32 -1)
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @ZVAL_LONG(i32* %14, i32 %255)
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ZVAL_LONG(i32* %15, i32 %259)
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @ZVAL_LONG(i32* %16, i32 %263)
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ZVAL_LONG(i32* %17, i32 %267)
  %269 = call i32 @ZVAL_LONG(i32* %18, i32 -1)
  %270 = call i32 @ZVAL_LONG(i32* %19, i32 -1)
  %271 = load i32*, i32** %6, align 8
  %272 = call i32 @Z_ARRVAL_P(i32* %271)
  %273 = call i32 @zend_hash_next_index_insert(i32 %272, i32* %7)
  %274 = load i32*, i32** %6, align 8
  %275 = call i32 @Z_ARRVAL_P(i32* %274)
  %276 = call i32 @zend_hash_next_index_insert(i32 %275, i32* %8)
  %277 = load i32*, i32** %6, align 8
  %278 = call i32 @Z_ARRVAL_P(i32* %277)
  %279 = call i32 @zend_hash_next_index_insert(i32 %278, i32* %9)
  %280 = load i32*, i32** %6, align 8
  %281 = call i32 @Z_ARRVAL_P(i32* %280)
  %282 = call i32 @zend_hash_next_index_insert(i32 %281, i32* %10)
  %283 = load i32*, i32** %6, align 8
  %284 = call i32 @Z_ARRVAL_P(i32* %283)
  %285 = call i32 @zend_hash_next_index_insert(i32 %284, i32* %11)
  %286 = load i32*, i32** %6, align 8
  %287 = call i32 @Z_ARRVAL_P(i32* %286)
  %288 = call i32 @zend_hash_next_index_insert(i32 %287, i32* %12)
  %289 = load i32*, i32** %6, align 8
  %290 = call i32 @Z_ARRVAL_P(i32* %289)
  %291 = call i32 @zend_hash_next_index_insert(i32 %290, i32* %13)
  %292 = load i32*, i32** %6, align 8
  %293 = call i32 @Z_ARRVAL_P(i32* %292)
  %294 = call i32 @zend_hash_next_index_insert(i32 %293, i32* %14)
  %295 = load i32*, i32** %6, align 8
  %296 = call i32 @Z_ARRVAL_P(i32* %295)
  %297 = call i32 @zend_hash_next_index_insert(i32 %296, i32* %15)
  %298 = load i32*, i32** %6, align 8
  %299 = call i32 @Z_ARRVAL_P(i32* %298)
  %300 = call i32 @zend_hash_next_index_insert(i32 %299, i32* %16)
  %301 = load i32*, i32** %6, align 8
  %302 = call i32 @Z_ARRVAL_P(i32* %301)
  %303 = call i32 @zend_hash_next_index_insert(i32 %302, i32* %17)
  %304 = load i32*, i32** %6, align 8
  %305 = call i32 @Z_ARRVAL_P(i32* %304)
  %306 = call i32 @zend_hash_next_index_insert(i32 %305, i32* %18)
  %307 = load i32*, i32** %6, align 8
  %308 = call i32 @Z_ARRVAL_P(i32* %307)
  %309 = call i32 @zend_hash_next_index_insert(i32 %308, i32* %19)
  %310 = load i32*, i32** %6, align 8
  %311 = call i32 @Z_ARRVAL_P(i32* %310)
  %312 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 0
  %313 = load i8*, i8** %312, align 16
  %314 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 0
  %315 = load i8*, i8** %314, align 16
  %316 = call i32 @strlen(i8* %315)
  %317 = call i32 @zend_hash_str_update(i32 %311, i8* %313, i32 %316, i32* %7)
  %318 = load i32*, i32** %6, align 8
  %319 = call i32 @Z_ARRVAL_P(i32* %318)
  %320 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 1
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @strlen(i8* %323)
  %325 = call i32 @zend_hash_str_update(i32 %319, i8* %321, i32 %324, i32* %8)
  %326 = load i32*, i32** %6, align 8
  %327 = call i32 @Z_ARRVAL_P(i32* %326)
  %328 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 2
  %329 = load i8*, i8** %328, align 16
  %330 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 2
  %331 = load i8*, i8** %330, align 16
  %332 = call i32 @strlen(i8* %331)
  %333 = call i32 @zend_hash_str_update(i32 %327, i8* %329, i32 %332, i32* %9)
  %334 = load i32*, i32** %6, align 8
  %335 = call i32 @Z_ARRVAL_P(i32* %334)
  %336 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 3
  %337 = load i8*, i8** %336, align 8
  %338 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 3
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 @strlen(i8* %339)
  %341 = call i32 @zend_hash_str_update(i32 %335, i8* %337, i32 %340, i32* %10)
  %342 = load i32*, i32** %6, align 8
  %343 = call i32 @Z_ARRVAL_P(i32* %342)
  %344 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 4
  %345 = load i8*, i8** %344, align 16
  %346 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 4
  %347 = load i8*, i8** %346, align 16
  %348 = call i32 @strlen(i8* %347)
  %349 = call i32 @zend_hash_str_update(i32 %343, i8* %345, i32 %348, i32* %11)
  %350 = load i32*, i32** %6, align 8
  %351 = call i32 @Z_ARRVAL_P(i32* %350)
  %352 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 5
  %353 = load i8*, i8** %352, align 8
  %354 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 5
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @strlen(i8* %355)
  %357 = call i32 @zend_hash_str_update(i32 %351, i8* %353, i32 %356, i32* %12)
  %358 = load i32*, i32** %6, align 8
  %359 = call i32 @Z_ARRVAL_P(i32* %358)
  %360 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 6
  %361 = load i8*, i8** %360, align 16
  %362 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 6
  %363 = load i8*, i8** %362, align 16
  %364 = call i32 @strlen(i8* %363)
  %365 = call i32 @zend_hash_str_update(i32 %359, i8* %361, i32 %364, i32* %13)
  %366 = load i32*, i32** %6, align 8
  %367 = call i32 @Z_ARRVAL_P(i32* %366)
  %368 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 7
  %369 = load i8*, i8** %368, align 8
  %370 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 7
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @strlen(i8* %371)
  %373 = call i32 @zend_hash_str_update(i32 %367, i8* %369, i32 %372, i32* %14)
  %374 = load i32*, i32** %6, align 8
  %375 = call i32 @Z_ARRVAL_P(i32* %374)
  %376 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 8
  %377 = load i8*, i8** %376, align 16
  %378 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 8
  %379 = load i8*, i8** %378, align 16
  %380 = call i32 @strlen(i8* %379)
  %381 = call i32 @zend_hash_str_update(i32 %375, i8* %377, i32 %380, i32* %15)
  %382 = load i32*, i32** %6, align 8
  %383 = call i32 @Z_ARRVAL_P(i32* %382)
  %384 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 9
  %385 = load i8*, i8** %384, align 8
  %386 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 9
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @strlen(i8* %387)
  %389 = call i32 @zend_hash_str_update(i32 %383, i8* %385, i32 %388, i32* %16)
  %390 = load i32*, i32** %6, align 8
  %391 = call i32 @Z_ARRVAL_P(i32* %390)
  %392 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 10
  %393 = load i8*, i8** %392, align 16
  %394 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 10
  %395 = load i8*, i8** %394, align 16
  %396 = call i32 @strlen(i8* %395)
  %397 = call i32 @zend_hash_str_update(i32 %391, i8* %393, i32 %396, i32* %17)
  %398 = load i32*, i32** %6, align 8
  %399 = call i32 @Z_ARRVAL_P(i32* %398)
  %400 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 11
  %401 = load i8*, i8** %400, align 8
  %402 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 11
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @strlen(i8* %403)
  %405 = call i32 @zend_hash_str_update(i32 %399, i8* %401, i32 %404, i32* %18)
  %406 = load i32*, i32** %6, align 8
  %407 = call i32 @Z_ARRVAL_P(i32* %406)
  %408 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 12
  %409 = load i8*, i8** %408, align 16
  %410 = getelementptr inbounds [13 x i8*], [13 x i8*]* %23, i64 0, i64 12
  %411 = load i8*, i8** %410, align 16
  %412 = call i32 @strlen(i8* %411)
  %413 = call i32 @zend_hash_str_update(i32 %407, i8* %409, i32 %412, i32* %19)
  br label %418

414:                                              ; preds = %96
  %415 = load i32, i32* @E_WARNING, align 4
  %416 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %415, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %417 = load i32, i32* @RETURN_FALSE, align 4
  br label %418

418:                                              ; preds = %414, %223
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @getuid(...) #2

declare dso_local i64 @getgid(...) #2

declare dso_local i32 @getgroups(i32, i64*) #2

declare dso_local i64 @safe_emalloc(i32, i32, i32) #2

declare dso_local i32 @efree(i64*) #2

declare dso_local i32 @RETURN_LONG(i32) #2

declare dso_local i32 @S_ISLNK(i32) #2

declare dso_local i32 @RETURN_STRING(i8*) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #2

declare dso_local i32 @RETURN_BOOL(i32) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @array_init(i32*) #2

declare dso_local i32 @ZVAL_LONG(i32*, i32) #2

declare dso_local i32 @zend_hash_next_index_insert(i32, i32*) #2

declare dso_local i32 @Z_ARRVAL_P(i32*) #2

declare dso_local i32 @zend_hash_str_update(i32, i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
