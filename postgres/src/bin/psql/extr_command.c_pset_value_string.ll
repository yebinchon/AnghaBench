; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_pset_value_string.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_pset_value_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printQueryOpt = type { i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"csv_fieldsep\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"fieldsep\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"fieldsep_zero\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"footer\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"linestyle\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"numericlocale\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"pager\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"pager_min_lines\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"recordsep\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"recordsep_zero\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"tableattr\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"tuples_only\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"unicode_border_linestyle\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"unicode_column_linestyle\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"unicode_header_linestyle\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.printQueryOpt*)* @pset_value_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pset_value_string(i8* %0, %struct.printQueryOpt* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.printQueryOpt*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.printQueryOpt* %1, %struct.printQueryOpt** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %15 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 15
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i8* %18, i8** %3, align 8
  br label %290

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %25 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %3, align 8
  br label %290

29:                                               ; preds = %19
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %35 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @pset_quoted_string(i8* %37)
  store i8* %38, i8** %3, align 8
  br label %290

39:                                               ; preds = %29
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %45 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %56

50:                                               ; preds = %43
  %51 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %52 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @pset_bool_string(i32 %54)
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %49 ], [ %55, %50 ]
  %58 = call i8* @pstrdup(i8* %57)
  store i8* %58, i8** %3, align 8
  br label %290

59:                                               ; preds = %39
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %65 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %72 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 13
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i8* [ %75, %70 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %76 ]
  %79 = call i8* @pset_quoted_string(i8* %78)
  store i8* %79, i8** %3, align 8
  br label %290

80:                                               ; preds = %59
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %86 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 13
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @pset_bool_string(i32 %89)
  %91 = call i8* @pstrdup(i8* %90)
  store i8* %91, i8** %3, align 8
  br label %290

92:                                               ; preds = %80
  %93 = load i8*, i8** %4, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %98 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @pset_bool_string(i32 %100)
  %102 = call i8* @pstrdup(i8* %101)
  store i8* %102, i8** %3, align 8
  br label %290

103:                                              ; preds = %92
  %104 = load i8*, i8** %4, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %109 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @_align2string(i32 %111)
  %113 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %112)
  store i8* %113, i8** %3, align 8
  br label %290

114:                                              ; preds = %103
  %115 = load i8*, i8** %4, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %120 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %119, i32 0, i32 2
  %121 = call %struct.TYPE_7__* @get_line_style(%struct.TYPE_8__* %120)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  store i8* %124, i8** %3, align 8
  br label %290

125:                                              ; preds = %114
  %126 = load i8*, i8** %4, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %131 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %136 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  br label %139

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %134
  %140 = phi i8* [ %137, %134 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %138 ]
  %141 = call i8* @pset_quoted_string(i8* %140)
  store i8* %141, i8** %3, align 8
  br label %290

142:                                              ; preds = %125
  %143 = load i8*, i8** %4, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %148 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i8* @pset_bool_string(i32 %150)
  %152 = call i8* @pstrdup(i8* %151)
  store i8* %152, i8** %3, align 8
  br label %290

153:                                              ; preds = %142
  %154 = load i8*, i8** %4, align 8
  %155 = call i64 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %159 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  store i8* %162, i8** %3, align 8
  br label %290

163:                                              ; preds = %153
  %164 = load i8*, i8** %4, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %169 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  store i8* %172, i8** %3, align 8
  br label %290

173:                                              ; preds = %163
  %174 = load i8*, i8** %4, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %173
  %178 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %179 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %186 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  br label %191

190:                                              ; preds = %177
  br label %191

191:                                              ; preds = %190, %184
  %192 = phi i8* [ %189, %184 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %190 ]
  %193 = call i8* @pset_quoted_string(i8* %192)
  store i8* %193, i8** %3, align 8
  br label %290

194:                                              ; preds = %173
  %195 = load i8*, i8** %4, align 8
  %196 = call i64 @strcmp(i8* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %200 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 9
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i8* @pset_bool_string(i32 %203)
  %205 = call i8* @pstrdup(i8* %204)
  store i8* %205, i8** %3, align 8
  br label %290

206:                                              ; preds = %194
  %207 = load i8*, i8** %4, align 8
  %208 = call i64 @strcmp(i8* %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %206
  %211 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %212 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 4
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %218 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 4
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @pset_quoted_string(i8* %220)
  br label %224

222:                                              ; preds = %210
  %223 = call i8* @pstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %216
  %225 = phi i8* [ %221, %216 ], [ %223, %222 ]
  store i8* %225, i8** %3, align 8
  br label %290

226:                                              ; preds = %206
  %227 = load i8*, i8** %4, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %226
  %231 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %232 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %237 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i8* @pset_quoted_string(i8* %238)
  br label %242

240:                                              ; preds = %230
  %241 = call i8* @pstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240, %235
  %243 = phi i8* [ %239, %235 ], [ %241, %240 ]
  store i8* %243, i8** %3, align 8
  br label %290

244:                                              ; preds = %226
  %245 = load i8*, i8** %4, align 8
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %250 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i8* @pset_bool_string(i32 %252)
  %254 = call i8* @pstrdup(i8* %253)
  store i8* %254, i8** %3, align 8
  br label %290

255:                                              ; preds = %244
  %256 = load i8*, i8** %4, align 8
  %257 = call i64 @strcmp(i8* %256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %255
  %260 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %261 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @_unicode_linestyle2string(i32 %263)
  %265 = call i8* @pstrdup(i8* %264)
  store i8* %265, i8** %3, align 8
  br label %290

266:                                              ; preds = %255
  %267 = load i8*, i8** %4, align 8
  %268 = call i64 @strcmp(i8* %267, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %266
  %271 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %272 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 8
  %275 = call i8* @_unicode_linestyle2string(i32 %274)
  %276 = call i8* @pstrdup(i8* %275)
  store i8* %276, i8** %3, align 8
  br label %290

277:                                              ; preds = %266
  %278 = load i8*, i8** %4, align 8
  %279 = call i64 @strcmp(i8* %278, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %277
  %282 = load %struct.printQueryOpt*, %struct.printQueryOpt** %5, align 8
  %283 = getelementptr inbounds %struct.printQueryOpt, %struct.printQueryOpt* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 4
  %286 = call i8* @_unicode_linestyle2string(i32 %285)
  %287 = call i8* @pstrdup(i8* %286)
  store i8* %287, i8** %3, align 8
  br label %290

288:                                              ; preds = %277
  %289 = call i8* @pstrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  store i8* %289, i8** %3, align 8
  br label %290

290:                                              ; preds = %288, %281, %270, %259, %248, %242, %224, %198, %191, %167, %157, %146, %139, %118, %107, %96, %84, %77, %56, %33, %23, %13
  %291 = load i8*, i8** %3, align 8
  ret i8* %291
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @psprintf(i8*, i32) #1

declare dso_local i8* @pset_quoted_string(i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @pset_bool_string(i32) #1

declare dso_local i32 @_align2string(i32) #1

declare dso_local %struct.TYPE_7__* @get_line_style(%struct.TYPE_8__*) #1

declare dso_local i8* @_unicode_linestyle2string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
