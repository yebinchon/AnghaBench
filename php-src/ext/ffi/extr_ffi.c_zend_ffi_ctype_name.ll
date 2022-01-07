; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_ctype_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_ctype_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"uint8_t\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"int8_t\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"uint16_t\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"int16_t\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"int32_t\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@ZEND_FFI_ATTR_VLA = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_INCOMPLETE_ARRAY = common dso_local global i32 0, align 4
@MAX_LENGTH_OF_LONG = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@ZEND_FFI_ATTR_UNION = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*)* @zend_ffi_ctype_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_ctype_name(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %2, %227
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %221 [
    i32 128, label %16
    i32 141, label %17
    i32 143, label %18
    i32 129, label %19
    i32 134, label %20
    i32 132, label %21
    i32 137, label %22
    i32 131, label %23
    i32 136, label %24
    i32 130, label %25
    i32 135, label %26
    i32 142, label %27
    i32 145, label %50
    i32 144, label %51
    i32 138, label %52
    i32 140, label %63
    i32 146, label %91
    i32 133, label %167
  ]

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %223

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %223

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %223

19:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %223

20:                                               ; preds = %12
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %223

21:                                               ; preds = %12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %223

22:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %223

23:                                               ; preds = %12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %223

24:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %223

25:                                               ; preds = %12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %223

26:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %223

27:                                               ; preds = %12
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ZSTR_VAL(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ZSTR_LEN(i32 %43)
  %45 = call i32 @zend_ffi_ctype_name_prepend(i32* %34, i8* %39, i32 %44)
  br label %49

46:                                               ; preds = %27
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @zend_ffi_ctype_name_prepend(i32* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11)
  br label %49

49:                                               ; preds = %46, %33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %223

50:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %223

51:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %223

52:                                               ; preds = %12
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @zend_ffi_ctype_name_prepend(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %234

57:                                               ; preds = %52
  store i32 1, i32* %7, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_14__* @ZEND_FFI_TYPE(i32 %61)
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %5, align 8
  br label %223

63:                                               ; preds = %12
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @zend_ffi_ctype_name_prepend(i32* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @zend_ffi_ctype_name_append(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70, %66
  store i32 0, i32* %3, align 4
  br label %234

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @zend_ffi_ctype_name_append(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @zend_ffi_ctype_name_append(i32* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %76
  store i32 0, i32* %3, align 4
  br label %234

85:                                               ; preds = %80
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_14__* @ZEND_FFI_TYPE(i32 %89)
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %5, align 8
  br label %223

91:                                               ; preds = %12
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @zend_ffi_ctype_name_prepend(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @zend_ffi_ctype_name_append(i32* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 1)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98, %94
  store i32 0, i32* %3, align 4
  br label %234

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %91
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @zend_ffi_ctype_name_append(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 1)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %234

109:                                              ; preds = %104
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ZEND_FFI_ATTR_VLA, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @zend_ffi_ctype_name_append(i32* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %234

121:                                              ; preds = %116
  br label %156

122:                                              ; preds = %109
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ZEND_FFI_ATTR_INCOMPLETE_ARRAY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @MAX_LENGTH_OF_LONG, align 4
  %131 = add nsw i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = call i8* @llvm.stacksave()
  store i8* %133, i8** %8, align 8
  %134 = alloca i8, i64 %132, align 16
  store i64 %132, i64* %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 %132
  %136 = getelementptr inbounds i8, i8* %135, i64 -1
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @zend_print_long_to_buf(i32 %137, i32 %141)
  store i8* %142, i8** %10, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @strlen(i8* %145)
  %147 = call i32 @zend_ffi_ctype_name_append(i32* %143, i8* %144, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %151

150:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %151

151:                                              ; preds = %150, %149
  %152 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %11, align 4
  switch i32 %153, label %236 [
    i32 0, label %154
    i32 1, label %234
  ]

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %154, %122
  br label %156

156:                                              ; preds = %155, %121
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @zend_ffi_ctype_name_append(i32* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 1)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %234

161:                                              ; preds = %156
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call %struct.TYPE_14__* @ZEND_FFI_TYPE(i32 %165)
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %5, align 8
  br label %223

167:                                              ; preds = %12
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ZEND_FFI_ATTR_UNION, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %167
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %174
  %181 = load i32*, i32** %4, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @ZSTR_VAL(i32 %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ZSTR_LEN(i32 %190)
  %192 = call i32 @zend_ffi_ctype_name_prepend(i32* %181, i8* %186, i32 %191)
  br label %196

193:                                              ; preds = %174
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @zend_ffi_ctype_name_prepend(i32* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11)
  br label %196

196:                                              ; preds = %193, %180
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %6, align 8
  br label %220

197:                                              ; preds = %167
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %197
  %204 = load i32*, i32** %4, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @ZSTR_VAL(i32 %208)
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ZSTR_LEN(i32 %213)
  %215 = call i32 @zend_ffi_ctype_name_prepend(i32* %204, i8* %209, i32 %214)
  br label %219

216:                                              ; preds = %197
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @zend_ffi_ctype_name_prepend(i32* %217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11)
  br label %219

219:                                              ; preds = %216, %203
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %220

220:                                              ; preds = %219, %196
  br label %223

221:                                              ; preds = %12
  %222 = call i32 @ZEND_ASSERT(i32 0)
  br label %223

223:                                              ; preds = %221, %220, %161, %85, %57, %51, %50, %49, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %224 = load i8*, i8** %6, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %228

227:                                              ; preds = %223
  br label %12

228:                                              ; preds = %226
  %229 = load i32*, i32** %4, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = load i8*, i8** %6, align 8
  %232 = call i32 @strlen(i8* %231)
  %233 = call i32 @zend_ffi_ctype_name_prepend(i32* %229, i8* %230, i32 %232)
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %228, %160, %151, %120, %108, %102, %84, %74, %56
  %235 = load i32, i32* %3, align 4
  ret i32 %235

236:                                              ; preds = %151
  unreachable
}

declare dso_local i32 @zend_ffi_ctype_name_prepend(i32*, i8*, i32) #1

declare dso_local i8* @ZSTR_VAL(i32) #1

declare dso_local i32 @ZSTR_LEN(i32) #1

declare dso_local %struct.TYPE_14__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zend_ffi_ctype_name_append(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @zend_print_long_to_buf(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
