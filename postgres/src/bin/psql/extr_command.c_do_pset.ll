; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_do_pset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_do_pset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt = type { i8*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32*, %struct.TYPE_9__, %struct.TYPE_8__, i8*, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.fmt.0 = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@do_pset.formats = internal constant [8 x %struct.fmt] [%struct.fmt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 135 }, %struct.fmt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 134 }, %struct.fmt { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 133 }, %struct.fmt { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 132 }, %struct.fmt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 131 }, %struct.fmt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 130 }, %struct.fmt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 129 }, %struct.fmt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 128 }], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"aligned\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"asciidoc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"latex\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"troff-ms\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"unaligned\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"wrapped\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"\\pset: ambiguous abbreviation \22%s\22 matches both \22%s\22 and \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"latex-longtable\00", align 1
@PRINT_LATEX_LONGTABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [110 x i8] c"\\pset: allowed formats are aligned, asciidoc, csv, html, latex, latex-longtable, troff-ms, unaligned, wrapped\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"linestyle\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@pg_asciiformat = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"old-ascii\00", align 1
@pg_asciiformat_old = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"unicode\00", align 1
@pg_utf8format = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [57 x i8] c"\\pset: allowed line styles are ascii, old-ascii, unicode\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"unicode_border_linestyle\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"\\pset: allowed Unicode border line styles are single, double\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"unicode_column_linestyle\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"\\pset: allowed Unicode column line styles are single, double\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"unicode_header_linestyle\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"\\pset: allowed Unicode header line styles are single, double\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"on, off, auto\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"csv_fieldsep\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"\\pset: csv_fieldsep must be a single one-byte character\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"\\pset: csv_fieldsep cannot be a double quote, a newline, or a carriage return\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"numericlocale\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"fieldsep\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"fieldsep_zero\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"recordsep\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"recordsep_zero\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"tuples_only\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"tableattr\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"pager\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"on, off, always\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"pager_min_lines\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"footer\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"\\pset: unknown option: %s\00", align 1
@pset = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_pset(i8* %0, i8* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %98

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %97

33:                                               ; preds = %29
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @lengthof(%struct.fmt.0* bitcast ([8 x %struct.fmt]* @do_pset.formats to %struct.fmt.0*))
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x %struct.fmt], [8 x %struct.fmt]* @do_pset.formats, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.fmt, %struct.fmt* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 16
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @pg_strncasecmp(i8* %43, i8* %44, i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %11, align 4
  br label %66

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x %struct.fmt], [8 x %struct.fmt]* @do_pset.formats, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.fmt, %struct.fmt* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 16
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x %struct.fmt], [8 x %struct.fmt]* @do_pset.formats, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.fmt, %struct.fmt* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 16
  %65 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i8* %54, i8* %59, i8* %64)
  store i32 0, i32* %5, align 4
  br label %676

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %38
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %34

71:                                               ; preds = %34
  %72 = load i32, i32* %11, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x %struct.fmt], [8 x %struct.fmt]* @do_pset.formats, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.fmt, %struct.fmt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  br label %96

83:                                               ; preds = %71
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @pg_strncasecmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %84, i64 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @PRINT_LATEX_LONGTABLE, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %95

93:                                               ; preds = %83
  %94 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %74
  br label %97

97:                                               ; preds = %96, %32
  br label %669

98:                                               ; preds = %25
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %138

106:                                              ; preds = %102
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @pg_strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %107, i64 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 16
  store i32* @pg_asciiformat, i32** %114, align 8
  br label %137

115:                                              ; preds = %106
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @pg_strncasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %116, i64 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 16
  store i32* @pg_asciiformat_old, i32** %123, align 8
  br label %136

124:                                              ; preds = %115
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @pg_strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %125, i64 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 16
  store i32* @pg_utf8format, i32** %132, align 8
  br label %135

133:                                              ; preds = %124
  %134 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %120
  br label %137

137:                                              ; preds = %136, %111
  br label %138

138:                                              ; preds = %137, %105
  br label %668

139:                                              ; preds = %98
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load i8*, i8** %7, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %162

147:                                              ; preds = %143
  %148 = load i8*, i8** %7, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 15
  %153 = call i64 @set_unicode_line_style(i8* %148, i64 %149, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = call i32 @refresh_utf8format(%struct.TYPE_11__* %157)
  br label %161

159:                                              ; preds = %147
  %160 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %146
  br label %667

163:                                              ; preds = %139
  %164 = load i8*, i8** %6, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %163
  %168 = load i8*, i8** %7, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  br label %186

171:                                              ; preds = %167
  %172 = load i8*, i8** %7, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 14
  %177 = call i64 @set_unicode_line_style(i8* %172, i64 %173, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = call i32 @refresh_utf8format(%struct.TYPE_11__* %181)
  br label %185

183:                                              ; preds = %171
  %184 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %170
  br label %666

187:                                              ; preds = %163
  %188 = load i8*, i8** %6, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %187
  %192 = load i8*, i8** %7, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  br label %210

195:                                              ; preds = %191
  %196 = load i8*, i8** %7, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 13
  %201 = call i64 @set_unicode_line_style(i8* %196, i64 %197, i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = call i32 @refresh_utf8format(%struct.TYPE_11__* %205)
  br label %209

207:                                              ; preds = %195
  %208 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %194
  br label %665

211:                                              ; preds = %187
  %212 = load i8*, i8** %6, align 8
  %213 = call i64 @strcmp(i8* %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load i8*, i8** %7, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i8*, i8** %7, align 8
  %220 = call i8* @atoi(i8* %219)
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 12
  store i8* %220, i8** %223, align 8
  br label %224

224:                                              ; preds = %218, %215
  br label %664

225:                                              ; preds = %211
  %226 = load i8*, i8** %6, align 8
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %225
  %230 = load i8*, i8** %6, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = load i8*, i8** %6, align 8
  %235 = call i64 @strcmp(i8* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %281

237:                                              ; preds = %233, %229, %225
  %238 = load i8*, i8** %7, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load i8*, i8** %7, align 8
  %242 = call i64 @pg_strcasecmp(i8* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  store i32 2, i32* %247, align 4
  br label %280

248:                                              ; preds = %240, %237
  %249 = load i8*, i8** %7, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %268

251:                                              ; preds = %248
  %252 = load i8*, i8** %7, align 8
  %253 = call i32 @ParseVariableBool(i8* %252, i8* null, i32* %13)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %251
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 1, i32 0
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  store i32 %259, i32* %262, align 4
  br label %267

263:                                              ; preds = %251
  %264 = load i8*, i8** %6, align 8
  %265 = load i8*, i8** %7, align 8
  %266 = call i32 @PsqlVarEnumError(i8* %264, i8* %265, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

267:                                              ; preds = %255
  br label %279

268:                                              ; preds = %248
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 4
  br label %279

279:                                              ; preds = %268, %267
  br label %280

280:                                              ; preds = %279, %244
  br label %663

281:                                              ; preds = %233
  %282 = load i8*, i8** %6, align 8
  %283 = call i64 @strcmp(i8* %282, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %324

285:                                              ; preds = %281
  %286 = load i8*, i8** %7, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %323

288:                                              ; preds = %285
  %289 = load i8*, i8** %7, align 8
  %290 = call i32 @strlen(i8* %289)
  %291 = icmp ne i32 %290, 1
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

294:                                              ; preds = %288
  %295 = load i8*, i8** %7, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 0
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 34
  br i1 %299, label %312, label %300

300:                                              ; preds = %294
  %301 = load i8*, i8** %7, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 0
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 10
  br i1 %305, label %312, label %306

306:                                              ; preds = %300
  %307 = load i8*, i8** %7, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 0
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 13
  br i1 %311, label %312, label %314

312:                                              ; preds = %306, %300, %294
  %313 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

314:                                              ; preds = %306
  %315 = load i8*, i8** %7, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 0
  %317 = load i8, i8* %316, align 1
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 2
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 0
  store i8 %317, i8* %322, align 1
  br label %323

323:                                              ; preds = %314, %285
  br label %662

324:                                              ; preds = %281
  %325 = load i8*, i8** %6, align 8
  %326 = call i64 @strcmp(i8* %325, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %350

328:                                              ; preds = %324
  %329 = load i8*, i8** %7, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %331, label %338

331:                                              ; preds = %328
  %332 = load i8*, i8** %7, align 8
  %333 = load i8*, i8** %6, align 8
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 3
  %337 = call i32 @ParseVariableBool(i8* %332, i8* %333, i32* %336)
  store i32 %337, i32* %5, align 4
  br label %676

338:                                              ; preds = %328
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = icmp ne i32 %342, 0
  %344 = xor i1 %343, true
  %345 = zext i1 %344 to i32
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 3
  store i32 %345, i32* %348, align 8
  br label %349

349:                                              ; preds = %338
  br label %661

350:                                              ; preds = %324
  %351 = load i8*, i8** %6, align 8
  %352 = call i64 @strcmp(i8* %351, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %368

354:                                              ; preds = %350
  %355 = load i8*, i8** %7, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %357, label %367

357:                                              ; preds = %354
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 2
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @free(i32* %360)
  %362 = load i8*, i8** %7, align 8
  %363 = call i8* @pg_strdup(i8* %362)
  %364 = bitcast i8* %363 to i32*
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 2
  store i32* %364, i32** %366, align 8
  br label %367

367:                                              ; preds = %357, %354
  br label %660

368:                                              ; preds = %350
  %369 = load i8*, i8** %6, align 8
  %370 = call i64 @strcmp(i8* %369, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %372, label %394

372:                                              ; preds = %368
  %373 = load i8*, i8** %7, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %393

375:                                              ; preds = %372
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 11
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 1
  %380 = load i32*, i32** %379, align 8
  %381 = call i32 @free(i32* %380)
  %382 = load i8*, i8** %7, align 8
  %383 = call i8* @pg_strdup(i8* %382)
  %384 = bitcast i8* %383 to i32*
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 11
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  store i32* %384, i32** %388, align 8
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 11
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  store i32 0, i32* %392, align 8
  br label %393

393:                                              ; preds = %375, %372
  br label %659

394:                                              ; preds = %368
  %395 = load i8*, i8** %6, align 8
  %396 = call i64 @strcmp(i8* %395, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0))
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %413

398:                                              ; preds = %394
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 11
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = call i32 @free(i32* %403)
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 11
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 1
  store i32* null, i32** %408, align 8
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 11
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  store i32 1, i32* %412, align 8
  br label %658

413:                                              ; preds = %394
  %414 = load i8*, i8** %6, align 8
  %415 = call i64 @strcmp(i8* %414, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %417, label %439

417:                                              ; preds = %413
  %418 = load i8*, i8** %7, align 8
  %419 = icmp ne i8* %418, null
  br i1 %419, label %420, label %438

420:                                              ; preds = %417
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 10
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = call i32 @free(i32* %425)
  %427 = load i8*, i8** %7, align 8
  %428 = call i8* @pg_strdup(i8* %427)
  %429 = bitcast i8* %428 to i32*
  %430 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 10
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 1
  store i32* %429, i32** %433, align 8
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 10
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 0
  store i32 0, i32* %437, align 8
  br label %438

438:                                              ; preds = %420, %417
  br label %657

439:                                              ; preds = %413
  %440 = load i8*, i8** %6, align 8
  %441 = call i64 @strcmp(i8* %440, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %458

443:                                              ; preds = %439
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 10
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i32 0, i32 1
  %448 = load i32*, i32** %447, align 8
  %449 = call i32 @free(i32* %448)
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 10
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i32 0, i32 1
  store i32* null, i32** %453, align 8
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 10
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 0
  store i32 1, i32* %457, align 8
  br label %656

458:                                              ; preds = %439
  %459 = load i8*, i8** %6, align 8
  %460 = call i64 @strcmp(i8* %459, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %466, label %462

462:                                              ; preds = %458
  %463 = load i8*, i8** %6, align 8
  %464 = call i64 @strcmp(i8* %463, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0))
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %488

466:                                              ; preds = %462, %458
  %467 = load i8*, i8** %7, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %469, label %476

469:                                              ; preds = %466
  %470 = load i8*, i8** %7, align 8
  %471 = load i8*, i8** %6, align 8
  %472 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i32 0, i32 4
  %475 = call i32 @ParseVariableBool(i8* %470, i8* %471, i32* %474)
  store i32 %475, i32* %5, align 4
  br label %676

476:                                              ; preds = %466
  %477 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %478, i32 0, i32 4
  %480 = load i32, i32* %479, align 4
  %481 = icmp ne i32 %480, 0
  %482 = xor i1 %481, true
  %483 = zext i1 %482 to i32
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 4
  store i32 %483, i32* %486, align 4
  br label %487

487:                                              ; preds = %476
  br label %655

488:                                              ; preds = %462
  %489 = load i8*, i8** %6, align 8
  %490 = call i64 @strcmp(i8* %489, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %496, label %492

492:                                              ; preds = %488
  %493 = load i8*, i8** %6, align 8
  %494 = call i64 @strcmp(i8* %493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %513

496:                                              ; preds = %492, %488
  %497 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = call i32 @free(i32* %499)
  %501 = load i8*, i8** %7, align 8
  %502 = icmp ne i8* %501, null
  br i1 %502, label %506, label %503

503:                                              ; preds = %496
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 1
  store i32* null, i32** %505, align 8
  br label %512

506:                                              ; preds = %496
  %507 = load i8*, i8** %7, align 8
  %508 = call i8* @pg_strdup(i8* %507)
  %509 = bitcast i8* %508 to i32*
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 1
  store i32* %509, i32** %511, align 8
  br label %512

512:                                              ; preds = %506, %503
  br label %654

513:                                              ; preds = %492
  %514 = load i8*, i8** %6, align 8
  %515 = call i64 @strcmp(i8* %514, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %521, label %517

517:                                              ; preds = %513
  %518 = load i8*, i8** %6, align 8
  %519 = call i64 @strcmp(i8* %518, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0))
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %541

521:                                              ; preds = %517, %513
  %522 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %523, i32 0, i32 9
  %525 = load i32*, i32** %524, align 8
  %526 = call i32 @free(i32* %525)
  %527 = load i8*, i8** %7, align 8
  %528 = icmp ne i8* %527, null
  br i1 %528, label %533, label %529

529:                                              ; preds = %521
  %530 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %531 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 9
  store i32* null, i32** %532, align 8
  br label %540

533:                                              ; preds = %521
  %534 = load i8*, i8** %7, align 8
  %535 = call i8* @pg_strdup(i8* %534)
  %536 = bitcast i8* %535 to i32*
  %537 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %538 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %538, i32 0, i32 9
  store i32* %536, i32** %539, align 8
  br label %540

540:                                              ; preds = %533, %529
  br label %653

541:                                              ; preds = %517
  %542 = load i8*, i8** %6, align 8
  %543 = call i64 @strcmp(i8* %542, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %592

545:                                              ; preds = %541
  %546 = load i8*, i8** %7, align 8
  %547 = icmp ne i8* %546, null
  br i1 %547, label %548, label %556

548:                                              ; preds = %545
  %549 = load i8*, i8** %7, align 8
  %550 = call i64 @pg_strcasecmp(i8* %549, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0))
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %552, label %556

552:                                              ; preds = %548
  %553 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %554 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %554, i32 0, i32 5
  store i32 2, i32* %555, align 8
  br label %591

556:                                              ; preds = %548, %545
  %557 = load i8*, i8** %7, align 8
  %558 = icmp ne i8* %557, null
  br i1 %558, label %559, label %575

559:                                              ; preds = %556
  %560 = load i8*, i8** %7, align 8
  %561 = call i32 @ParseVariableBool(i8* %560, i8* null, i32* %14)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %567, label %563

563:                                              ; preds = %559
  %564 = load i8*, i8** %6, align 8
  %565 = load i8*, i8** %7, align 8
  %566 = call i32 @PsqlVarEnumError(i8* %564, i8* %565, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %676

567:                                              ; preds = %559
  %568 = load i32, i32* %14, align 4
  %569 = icmp ne i32 %568, 0
  %570 = zext i1 %569 to i64
  %571 = select i1 %569, i32 1, i32 0
  %572 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 0, i32 5
  store i32 %571, i32* %574, align 8
  br label %590

575:                                              ; preds = %556
  %576 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %577 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 8
  %580 = icmp eq i32 %579, 1
  br i1 %580, label %581, label %585

581:                                              ; preds = %575
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i32 0, i32 5
  store i32 0, i32* %584, align 8
  br label %589

585:                                              ; preds = %575
  %586 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %587 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 5
  store i32 1, i32* %588, align 8
  br label %589

589:                                              ; preds = %585, %581
  br label %590

590:                                              ; preds = %589, %567
  br label %591

591:                                              ; preds = %590, %552
  br label %652

592:                                              ; preds = %541
  %593 = load i8*, i8** %6, align 8
  %594 = call i64 @strcmp(i8* %593, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0))
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %606

596:                                              ; preds = %592
  %597 = load i8*, i8** %7, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %605

599:                                              ; preds = %596
  %600 = load i8*, i8** %7, align 8
  %601 = call i8* @atoi(i8* %600)
  %602 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %603, i32 0, i32 8
  store i8* %601, i8** %604, align 8
  br label %605

605:                                              ; preds = %599, %596
  br label %651

606:                                              ; preds = %592
  %607 = load i8*, i8** %6, align 8
  %608 = call i64 @strcmp(i8* %607, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0))
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %610, label %632

610:                                              ; preds = %606
  %611 = load i8*, i8** %7, align 8
  %612 = icmp ne i8* %611, null
  br i1 %612, label %613, label %620

613:                                              ; preds = %610
  %614 = load i8*, i8** %7, align 8
  %615 = load i8*, i8** %6, align 8
  %616 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %617, i32 0, i32 6
  %619 = call i32 @ParseVariableBool(i8* %614, i8* %615, i32* %618)
  store i32 %619, i32* %5, align 4
  br label %676

620:                                              ; preds = %610
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %622 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 6
  %624 = load i32, i32* %623, align 4
  %625 = icmp ne i32 %624, 0
  %626 = xor i1 %625, true
  %627 = zext i1 %626 to i32
  %628 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %629 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %629, i32 0, i32 6
  store i32 %627, i32* %630, align 4
  br label %631

631:                                              ; preds = %620
  br label %650

632:                                              ; preds = %606
  %633 = load i8*, i8** %6, align 8
  %634 = call i64 @strcmp(i8* %633, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0))
  %635 = icmp eq i64 %634, 0
  br i1 %635, label %636, label %646

636:                                              ; preds = %632
  %637 = load i8*, i8** %7, align 8
  %638 = icmp ne i8* %637, null
  br i1 %638, label %639, label %645

639:                                              ; preds = %636
  %640 = load i8*, i8** %7, align 8
  %641 = call i8* @atoi(i8* %640)
  %642 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %643 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %643, i32 0, i32 7
  store i8* %641, i8** %644, align 8
  br label %645

645:                                              ; preds = %639, %636
  br label %649

646:                                              ; preds = %632
  %647 = load i8*, i8** %6, align 8
  %648 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i8* %647)
  store i32 0, i32* %5, align 4
  br label %676

649:                                              ; preds = %645
  br label %650

650:                                              ; preds = %649, %631
  br label %651

651:                                              ; preds = %650, %605
  br label %652

652:                                              ; preds = %651, %591
  br label %653

653:                                              ; preds = %652, %540
  br label %654

654:                                              ; preds = %653, %512
  br label %655

655:                                              ; preds = %654, %487
  br label %656

656:                                              ; preds = %655, %443
  br label %657

657:                                              ; preds = %656, %438
  br label %658

658:                                              ; preds = %657, %398
  br label %659

659:                                              ; preds = %658, %393
  br label %660

660:                                              ; preds = %659, %367
  br label %661

661:                                              ; preds = %660, %349
  br label %662

662:                                              ; preds = %661, %323
  br label %663

663:                                              ; preds = %662, %280
  br label %664

664:                                              ; preds = %663, %224
  br label %665

665:                                              ; preds = %664, %210
  br label %666

666:                                              ; preds = %665, %186
  br label %667

667:                                              ; preds = %666, %162
  br label %668

668:                                              ; preds = %667, %138
  br label %669

669:                                              ; preds = %668, %97
  %670 = load i32, i32* %9, align 4
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %675, label %672

672:                                              ; preds = %669
  %673 = load i8*, i8** %6, align 8
  %674 = call i32 @printPsetInfo(i8* %673, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pset, i32 0, i32 0))
  br label %675

675:                                              ; preds = %672, %669
  store i32 1, i32* %5, align 4
  br label %676

676:                                              ; preds = %675, %646, %613, %563, %469, %331, %312, %292, %263, %207, %183, %159, %133, %93, %53
  %677 = load i32, i32* %5, align 4
  ret i32 %677
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lengthof(%struct.fmt.0*) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i64 @set_unicode_line_style(i8*, i64, i32*) #1

declare dso_local i32 @refresh_utf8format(%struct.TYPE_11__*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @ParseVariableBool(i8*, i8*, i32*) #1

declare dso_local i32 @PsqlVarEnumError(i8*, i8*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @printPsetInfo(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
