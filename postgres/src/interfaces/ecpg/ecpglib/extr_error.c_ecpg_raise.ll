; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_ecpg_raise.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_ecpg_raise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlca_t = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no data found on line %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"out of memory on line %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unsupported type \22%s\22 on line %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"too many arguments on line %d\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"too few arguments on line %d\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"invalid input syntax for type int: \22%s\22, on line %d\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"invalid input syntax for type unsigned int: \22%s\22, on line %d\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"invalid input syntax for floating-point type: \22%s\22, on line %d\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"invalid syntax for type boolean: \22%s\22, on line %d\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"could not convert boolean value: size mismatch, on line %d\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"empty query on line %d\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"null value without indicator on line %d\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"variable does not have an array type on line %d\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"data read from server is not an array on line %d\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"inserting an array of variables is not supported on line %d\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"connection \22%s\22 does not exist on line %d\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"not connected to connection \22%s\22 on line %d\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"invalid statement name \22%s\22 on line %d\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"descriptor \22%s\22 not found on line %d\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"descriptor index out of range on line %d\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"unrecognized descriptor item \22%s\22 on line %d\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"variable does not have a numeric type on line %d\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"variable does not have a character type on line %d\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"error in transaction processing on line %d\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"could not connect to database \22%s\22 on line %d\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"SQL error %d on line %d\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"raising sqlcode %d on line %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecpg_raise(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sqlca_t*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %10, %struct.sqlca_t** %9, align 8
  %11 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %12 = icmp eq %struct.sqlca_t* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = call i32 (i8*, ...) @ecpg_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @ECPGfree_auto_mem()
  br label %267

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %19 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %21 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strncpy(i32 %22, i8* %23, i32 4)
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %241 [
    i32 140, label %26
    i32 137, label %34
    i32 130, label %42
    i32 135, label %51
    i32 136, label %59
    i32 145, label %67
    i32 133, label %76
    i32 146, label %85
    i32 149, label %94
    i32 147, label %115
    i32 142, label %123
    i32 139, label %131
    i32 148, label %139
    i32 151, label %147
    i32 138, label %155
    i32 141, label %164
    i32 143, label %173
    i32 132, label %182
    i32 144, label %191
    i32 131, label %199
    i32 128, label %208
    i32 129, label %216
    i32 134, label %224
    i32 150, label %232
  ]

26:                                               ; preds = %16
  %27 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %28 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %30, i32 4, i8* %31, i32 %32)
  br label %250

34:                                               ; preds = %16
  %35 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %36 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %38, i32 4, i8* %39, i32 %40)
  br label %250

42:                                               ; preds = %16
  %43 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %44 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %46, i32 4, i8* %47, i8* %48, i32 %49)
  br label %250

51:                                               ; preds = %16
  %52 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %53 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %55, i32 4, i8* %56, i32 %57)
  br label %250

59:                                               ; preds = %16
  %60 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %61 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %63, i32 4, i8* %64, i32 %65)
  br label %250

67:                                               ; preds = %16
  %68 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %69 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %71, i32 4, i8* %72, i8* %73, i32 %74)
  br label %250

76:                                               ; preds = %16
  %77 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %78 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %80, i32 4, i8* %81, i8* %82, i32 %83)
  br label %250

85:                                               ; preds = %16
  %86 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %87 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %89, i32 4, i8* %90, i8* %91, i32 %92)
  br label %250

94:                                               ; preds = %16
  %95 = load i8*, i8** %8, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %99 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %101, i32 4, i8* %102, i8* %103, i32 %104)
  br label %114

106:                                              ; preds = %94
  %107 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %108 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %110, i32 4, i8* %111, i32 %112)
  br label %114

114:                                              ; preds = %106, %97
  br label %250

115:                                              ; preds = %16
  %116 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %117 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %119, i32 4, i8* %120, i32 %121)
  br label %250

123:                                              ; preds = %16
  %124 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %125 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %129 = load i32, i32* %5, align 4
  %130 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %127, i32 4, i8* %128, i32 %129)
  br label %250

131:                                              ; preds = %16
  %132 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %133 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %135, i32 4, i8* %136, i32 %137)
  br label %250

139:                                              ; preds = %16
  %140 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %141 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0))
  %145 = load i32, i32* %5, align 4
  %146 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %143, i32 4, i8* %144, i32 %145)
  br label %250

147:                                              ; preds = %16
  %148 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %149 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0))
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %151, i32 4, i8* %152, i32 %153)
  br label %250

155:                                              ; preds = %16
  %156 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %157 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %159, i32 4, i8* %160, i8* %161, i32 %162)
  br label %250

164:                                              ; preds = %16
  %165 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %166 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %168, i32 4, i8* %169, i8* %170, i32 %171)
  br label %250

173:                                              ; preds = %16
  %174 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %175 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %179 = load i8*, i8** %8, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %177, i32 4, i8* %178, i8* %179, i32 %180)
  br label %250

182:                                              ; preds = %16
  %183 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %184 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %186, i32 4, i8* %187, i8* %188, i32 %189)
  br label %250

191:                                              ; preds = %16
  %192 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %193 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %197 = load i32, i32* %5, align 4
  %198 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %195, i32 4, i8* %196, i32 %197)
  br label %250

199:                                              ; preds = %16
  %200 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %201 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %203, i32 4, i8* %204, i8* %205, i32 %206)
  br label %250

208:                                              ; preds = %16
  %209 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %210 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  %214 = load i32, i32* %5, align 4
  %215 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %212, i32 4, i8* %213, i32 %214)
  br label %250

216:                                              ; preds = %16
  %217 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %218 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0))
  %222 = load i32, i32* %5, align 4
  %223 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %220, i32 4, i8* %221, i32 %222)
  br label %250

224:                                              ; preds = %16
  %225 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %226 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0))
  %230 = load i32, i32* %5, align 4
  %231 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %228, i32 4, i8* %229, i32 %230)
  br label %250

232:                                              ; preds = %16
  %233 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %234 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0))
  %238 = load i8*, i8** %8, align 8
  %239 = load i32, i32* %5, align 4
  %240 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %236, i32 4, i8* %237, i8* %238, i32 %239)
  br label %250

241:                                              ; preds = %16
  %242 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %243 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %5, align 4
  %249 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %245, i32 4, i8* %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %241, %232, %224, %216, %208, %199, %191, %182, %173, %164, %155, %147, %139, %131, %123, %115, %114, %85, %76, %67, %59, %51, %42, %34, %26
  %251 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %252 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @strlen(i32 %254)
  %256 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %257 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %5, align 4
  %261 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %262 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, ...) @ecpg_log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 %259, i32 %260, i32 %264)
  %266 = call i32 (...) @ECPGfree_auto_mem()
  br label %267

267:                                              ; preds = %250, %13
  ret void
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_log(i8*, ...) #1

declare dso_local i32 @ECPGfree_auto_mem(...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i8* @ecpg_gettext(i8*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
