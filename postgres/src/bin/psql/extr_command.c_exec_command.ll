; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [68 x i8] c"\\%s command ignored; use \\endif or Ctrl-C to exit current \\if block\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"conninfo\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"crosstabview\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ef\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"qecho\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"errverbose\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"gx\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"gdesc\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"gexec\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"gset\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"include_relative\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"l+\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"list+\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"lo_\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"pset\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"setenv\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"sf+\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"sv+\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"watch\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@PSQL_CMD_UNKNOWN = common dso_local global i64 0, align 8
@PSQL_CMD_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i32, i32)* @exec_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exec_command(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @conditional_active(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @is_branching_command(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @pg_log_warning(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %20, %17, %5
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @exec_command_a(i32 %32, i32 %33)
  store i64 %34, i64* %11, align 8
  br label %597

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @exec_command_C(i32 %40, i32 %41)
  store i64 %42, i64* %11, align 8
  br label %596

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @exec_command_connect(i32 %52, i32 %53)
  store i64 %54, i64* %11, align 8
  br label %595

55:                                               ; preds = %47
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @exec_command_cd(i32 %60, i32 %61, i8* %62)
  store i64 %63, i64* %11, align 8
  br label %594

64:                                               ; preds = %55
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @exec_command_conninfo(i32 %69, i32 %70)
  store i64 %71, i64* %11, align 8
  br label %593

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @pg_strcasecmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @exec_command_copy(i32 %77, i32 %78)
  store i64 %79, i64* %11, align 8
  br label %592

80:                                               ; preds = %72
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i64 @exec_command_copyright(i32 %85, i32 %86)
  store i64 %87, i64* %11, align 8
  br label %591

88:                                               ; preds = %80
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @exec_command_crosstabview(i32 %93, i32 %94)
  store i64 %95, i64* %11, align 8
  br label %590

96:                                               ; preds = %88
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 @exec_command_d(i32 %103, i32 %104, i8* %105)
  store i64 %106, i64* %11, align 8
  br label %589

107:                                              ; preds = %96
  %108 = load i8*, i8** %6, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @exec_command_edit(i32 %116, i32 %117, i32 %118, i32 %119)
  store i64 %120, i64* %11, align 8
  br label %588

121:                                              ; preds = %111
  %122 = load i8*, i8** %6, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i64 @exec_command_ef_ev(i32 %126, i32 %127, i32 %128, i32 1)
  store i64 %129, i64* %11, align 8
  br label %587

130:                                              ; preds = %121
  %131 = load i8*, i8** %6, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i64 @exec_command_ef_ev(i32 %135, i32 %136, i32 %137, i32 0)
  store i64 %138, i64* %11, align 8
  br label %586

139:                                              ; preds = %130
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = load i8*, i8** %6, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %6, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147, %143, %139
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = call i64 @exec_command_echo(i32 %152, i32 %153, i8* %154)
  store i64 %155, i64* %11, align 8
  br label %585

156:                                              ; preds = %147
  %157 = load i8*, i8** %6, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i64 @exec_command_elif(i32 %161, i32 %162, i32 %163)
  store i64 %164, i64* %11, align 8
  br label %584

165:                                              ; preds = %156
  %166 = load i8*, i8** %6, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i64 @exec_command_else(i32 %170, i32 %171, i32 %172)
  store i64 %173, i64* %11, align 8
  br label %583

174:                                              ; preds = %165
  %175 = load i8*, i8** %6, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i64 @exec_command_endif(i32 %179, i32 %180, i32 %181)
  store i64 %182, i64* %11, align 8
  br label %582

183:                                              ; preds = %174
  %184 = load i8*, i8** %6, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i64 @exec_command_encoding(i32 %188, i32 %189)
  store i64 %190, i64* %11, align 8
  br label %581

191:                                              ; preds = %183
  %192 = load i8*, i8** %6, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %12, align 4
  %198 = call i64 @exec_command_errverbose(i32 %196, i32 %197)
  store i64 %198, i64* %11, align 8
  br label %580

199:                                              ; preds = %191
  %200 = load i8*, i8** %6, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %12, align 4
  %206 = call i64 @exec_command_f(i32 %204, i32 %205)
  store i64 %206, i64* %11, align 8
  br label %579

207:                                              ; preds = %199
  %208 = load i8*, i8** %6, align 8
  %209 = call i64 @strcmp(i8* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load i8*, i8** %6, align 8
  %213 = call i64 @strcmp(i8* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211, %207
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i8*, i8** %6, align 8
  %219 = call i64 @exec_command_g(i32 %216, i32 %217, i8* %218)
  store i64 %219, i64* %11, align 8
  br label %578

220:                                              ; preds = %211
  %221 = load i8*, i8** %6, align 8
  %222 = call i64 @strcmp(i8* %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %12, align 4
  %227 = call i64 @exec_command_gdesc(i32 %225, i32 %226)
  store i64 %227, i64* %11, align 8
  br label %577

228:                                              ; preds = %220
  %229 = load i8*, i8** %6, align 8
  %230 = call i64 @strcmp(i8* %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %12, align 4
  %235 = call i64 @exec_command_gexec(i32 %233, i32 %234)
  store i64 %235, i64* %11, align 8
  br label %576

236:                                              ; preds = %228
  %237 = load i8*, i8** %6, align 8
  %238 = call i64 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i64 @exec_command_gset(i32 %241, i32 %242)
  store i64 %243, i64* %11, align 8
  br label %575

244:                                              ; preds = %236
  %245 = load i8*, i8** %6, align 8
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %244
  %249 = load i8*, i8** %6, align 8
  %250 = call i64 @strcmp(i8* %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %248, %244
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* %12, align 4
  %255 = call i64 @exec_command_help(i32 %253, i32 %254)
  store i64 %255, i64* %11, align 8
  br label %574

256:                                              ; preds = %248
  %257 = load i8*, i8** %6, align 8
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i8*, i8** %6, align 8
  %262 = call i64 @strcmp(i8* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %260, %256
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %12, align 4
  %267 = call i64 @exec_command_html(i32 %265, i32 %266)
  store i64 %267, i64* %11, align 8
  br label %573

268:                                              ; preds = %260
  %269 = load i8*, i8** %6, align 8
  %270 = call i64 @strcmp(i8* %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %268
  %273 = load i8*, i8** %6, align 8
  %274 = call i64 @strcmp(i8* %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %272
  %277 = load i8*, i8** %6, align 8
  %278 = call i64 @strcmp(i8* %277, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %276
  %281 = load i8*, i8** %6, align 8
  %282 = call i64 @strcmp(i8* %281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %280, %276, %272, %268
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %12, align 4
  %287 = load i8*, i8** %6, align 8
  %288 = call i64 @exec_command_include(i32 %285, i32 %286, i8* %287)
  store i64 %288, i64* %11, align 8
  br label %572

289:                                              ; preds = %280
  %290 = load i8*, i8** %6, align 8
  %291 = call i64 @strcmp(i8* %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* %9, align 4
  %297 = call i64 @exec_command_if(i32 %294, i32 %295, i32 %296)
  store i64 %297, i64* %11, align 8
  br label %571

298:                                              ; preds = %289
  %299 = load i8*, i8** %6, align 8
  %300 = call i64 @strcmp(i8* %299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %314, label %302

302:                                              ; preds = %298
  %303 = load i8*, i8** %6, align 8
  %304 = call i64 @strcmp(i8* %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %302
  %307 = load i8*, i8** %6, align 8
  %308 = call i64 @strcmp(i8* %307, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = load i8*, i8** %6, align 8
  %312 = call i64 @strcmp(i8* %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %310, %306, %302, %298
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* %12, align 4
  %317 = load i8*, i8** %6, align 8
  %318 = call i64 @exec_command_list(i32 %315, i32 %316, i8* %317)
  store i64 %318, i64* %11, align 8
  br label %570

319:                                              ; preds = %310
  %320 = load i8*, i8** %6, align 8
  %321 = call i64 @strncmp(i8* %320, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32 3)
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %319
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %12, align 4
  %326 = load i8*, i8** %6, align 8
  %327 = call i64 @exec_command_lo(i32 %324, i32 %325, i8* %326)
  store i64 %327, i64* %11, align 8
  br label %569

328:                                              ; preds = %319
  %329 = load i8*, i8** %6, align 8
  %330 = call i64 @strcmp(i8* %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = load i8*, i8** %6, align 8
  %334 = call i64 @strcmp(i8* %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %332, %328
  %337 = load i32, i32* %7, align 4
  %338 = load i32, i32* %12, align 4
  %339 = call i64 @exec_command_out(i32 %337, i32 %338)
  store i64 %339, i64* %11, align 8
  br label %568

340:                                              ; preds = %332
  %341 = load i8*, i8** %6, align 8
  %342 = call i64 @strcmp(i8* %341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %340
  %345 = load i8*, i8** %6, align 8
  %346 = call i64 @strcmp(i8* %345, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0))
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %344, %340
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %12, align 4
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* %10, align 4
  %353 = call i64 @exec_command_print(i32 %349, i32 %350, i32 %351, i32 %352)
  store i64 %353, i64* %11, align 8
  br label %567

354:                                              ; preds = %344
  %355 = load i8*, i8** %6, align 8
  %356 = call i64 @strcmp(i8* %355, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %354
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* %12, align 4
  %361 = call i64 @exec_command_password(i32 %359, i32 %360)
  store i64 %361, i64* %11, align 8
  br label %566

362:                                              ; preds = %354
  %363 = load i8*, i8** %6, align 8
  %364 = call i64 @strcmp(i8* %363, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %362
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %12, align 4
  %369 = load i8*, i8** %6, align 8
  %370 = call i64 @exec_command_prompt(i32 %367, i32 %368, i8* %369)
  store i64 %370, i64* %11, align 8
  br label %565

371:                                              ; preds = %362
  %372 = load i8*, i8** %6, align 8
  %373 = call i64 @strcmp(i8* %372, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0))
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %371
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* %12, align 4
  %378 = call i64 @exec_command_pset(i32 %376, i32 %377)
  store i64 %378, i64* %11, align 8
  br label %564

379:                                              ; preds = %371
  %380 = load i8*, i8** %6, align 8
  %381 = call i64 @strcmp(i8* %380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0))
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load i8*, i8** %6, align 8
  %385 = call i64 @strcmp(i8* %384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0))
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %383, %379
  %388 = load i32, i32* %7, align 4
  %389 = load i32, i32* %12, align 4
  %390 = call i64 @exec_command_quit(i32 %388, i32 %389)
  store i64 %390, i64* %11, align 8
  br label %563

391:                                              ; preds = %383
  %392 = load i8*, i8** %6, align 8
  %393 = call i64 @strcmp(i8* %392, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0))
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %391
  %396 = load i8*, i8** %6, align 8
  %397 = call i64 @strcmp(i8* %396, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %404

399:                                              ; preds = %395, %391
  %400 = load i32, i32* %7, align 4
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %9, align 4
  %403 = call i64 @exec_command_reset(i32 %400, i32 %401, i32 %402)
  store i64 %403, i64* %11, align 8
  br label %562

404:                                              ; preds = %395
  %405 = load i8*, i8** %6, align 8
  %406 = call i64 @strcmp(i8* %405, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = load i32, i32* %7, align 4
  %410 = load i32, i32* %12, align 4
  %411 = call i64 @exec_command_s(i32 %409, i32 %410)
  store i64 %411, i64* %11, align 8
  br label %561

412:                                              ; preds = %404
  %413 = load i8*, i8** %6, align 8
  %414 = call i64 @strcmp(i8* %413, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0))
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %412
  %417 = load i32, i32* %7, align 4
  %418 = load i32, i32* %12, align 4
  %419 = call i64 @exec_command_set(i32 %417, i32 %418)
  store i64 %419, i64* %11, align 8
  br label %560

420:                                              ; preds = %412
  %421 = load i8*, i8** %6, align 8
  %422 = call i64 @strcmp(i8* %421, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0))
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %429

424:                                              ; preds = %420
  %425 = load i32, i32* %7, align 4
  %426 = load i32, i32* %12, align 4
  %427 = load i8*, i8** %6, align 8
  %428 = call i64 @exec_command_setenv(i32 %425, i32 %426, i8* %427)
  store i64 %428, i64* %11, align 8
  br label %559

429:                                              ; preds = %420
  %430 = load i8*, i8** %6, align 8
  %431 = call i64 @strcmp(i8* %430, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0))
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %437, label %433

433:                                              ; preds = %429
  %434 = load i8*, i8** %6, align 8
  %435 = call i64 @strcmp(i8* %434, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0))
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %433, %429
  %438 = load i32, i32* %7, align 4
  %439 = load i32, i32* %12, align 4
  %440 = load i8*, i8** %6, align 8
  %441 = call i64 @exec_command_sf_sv(i32 %438, i32 %439, i8* %440, i32 1)
  store i64 %441, i64* %11, align 8
  br label %558

442:                                              ; preds = %433
  %443 = load i8*, i8** %6, align 8
  %444 = call i64 @strcmp(i8* %443, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0))
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %450, label %446

446:                                              ; preds = %442
  %447 = load i8*, i8** %6, align 8
  %448 = call i64 @strcmp(i8* %447, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0))
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %446, %442
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* %12, align 4
  %453 = load i8*, i8** %6, align 8
  %454 = call i64 @exec_command_sf_sv(i32 %451, i32 %452, i8* %453, i32 0)
  store i64 %454, i64* %11, align 8
  br label %557

455:                                              ; preds = %446
  %456 = load i8*, i8** %6, align 8
  %457 = call i64 @strcmp(i8* %456, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0))
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %455
  %460 = load i32, i32* %7, align 4
  %461 = load i32, i32* %12, align 4
  %462 = call i64 @exec_command_t(i32 %460, i32 %461)
  store i64 %462, i64* %11, align 8
  br label %556

463:                                              ; preds = %455
  %464 = load i8*, i8** %6, align 8
  %465 = call i64 @strcmp(i8* %464, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0))
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %463
  %468 = load i32, i32* %7, align 4
  %469 = load i32, i32* %12, align 4
  %470 = call i64 @exec_command_T(i32 %468, i32 %469)
  store i64 %470, i64* %11, align 8
  br label %555

471:                                              ; preds = %463
  %472 = load i8*, i8** %6, align 8
  %473 = call i64 @strcmp(i8* %472, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0))
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %471
  %476 = load i32, i32* %7, align 4
  %477 = load i32, i32* %12, align 4
  %478 = call i64 @exec_command_timing(i32 %476, i32 %477)
  store i64 %478, i64* %11, align 8
  br label %554

479:                                              ; preds = %471
  %480 = load i8*, i8** %6, align 8
  %481 = call i64 @strcmp(i8* %480, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0))
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %479
  %484 = load i32, i32* %7, align 4
  %485 = load i32, i32* %12, align 4
  %486 = load i8*, i8** %6, align 8
  %487 = call i64 @exec_command_unset(i32 %484, i32 %485, i8* %486)
  store i64 %487, i64* %11, align 8
  br label %553

488:                                              ; preds = %479
  %489 = load i8*, i8** %6, align 8
  %490 = call i64 @strcmp(i8* %489, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %496, label %492

492:                                              ; preds = %488
  %493 = load i8*, i8** %6, align 8
  %494 = call i64 @strcmp(i8* %493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0))
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %503

496:                                              ; preds = %492, %488
  %497 = load i32, i32* %7, align 4
  %498 = load i32, i32* %12, align 4
  %499 = load i8*, i8** %6, align 8
  %500 = load i32, i32* %9, align 4
  %501 = load i32, i32* %10, align 4
  %502 = call i64 @exec_command_write(i32 %497, i32 %498, i8* %499, i32 %500, i32 %501)
  store i64 %502, i64* %11, align 8
  br label %552

503:                                              ; preds = %492
  %504 = load i8*, i8** %6, align 8
  %505 = call i64 @strcmp(i8* %504, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0))
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %513

507:                                              ; preds = %503
  %508 = load i32, i32* %7, align 4
  %509 = load i32, i32* %12, align 4
  %510 = load i32, i32* %9, align 4
  %511 = load i32, i32* %10, align 4
  %512 = call i64 @exec_command_watch(i32 %508, i32 %509, i32 %510, i32 %511)
  store i64 %512, i64* %11, align 8
  br label %551

513:                                              ; preds = %503
  %514 = load i8*, i8** %6, align 8
  %515 = call i64 @strcmp(i8* %514, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0))
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %513
  %518 = load i32, i32* %7, align 4
  %519 = load i32, i32* %12, align 4
  %520 = call i64 @exec_command_x(i32 %518, i32 %519)
  store i64 %520, i64* %11, align 8
  br label %550

521:                                              ; preds = %513
  %522 = load i8*, i8** %6, align 8
  %523 = call i64 @strcmp(i8* %522, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0))
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %525, label %529

525:                                              ; preds = %521
  %526 = load i32, i32* %7, align 4
  %527 = load i32, i32* %12, align 4
  %528 = call i64 @exec_command_z(i32 %526, i32 %527)
  store i64 %528, i64* %11, align 8
  br label %549

529:                                              ; preds = %521
  %530 = load i8*, i8** %6, align 8
  %531 = call i64 @strcmp(i8* %530, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0))
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %529
  %534 = load i32, i32* %7, align 4
  %535 = load i32, i32* %12, align 4
  %536 = call i64 @exec_command_shell_escape(i32 %534, i32 %535)
  store i64 %536, i64* %11, align 8
  br label %548

537:                                              ; preds = %529
  %538 = load i8*, i8** %6, align 8
  %539 = call i64 @strcmp(i8* %538, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %545

541:                                              ; preds = %537
  %542 = load i32, i32* %7, align 4
  %543 = load i32, i32* %12, align 4
  %544 = call i64 @exec_command_slash_command_help(i32 %542, i32 %543)
  store i64 %544, i64* %11, align 8
  br label %547

545:                                              ; preds = %537
  %546 = load i64, i64* @PSQL_CMD_UNKNOWN, align 8
  store i64 %546, i64* %11, align 8
  br label %547

547:                                              ; preds = %545, %541
  br label %548

548:                                              ; preds = %547, %533
  br label %549

549:                                              ; preds = %548, %525
  br label %550

550:                                              ; preds = %549, %517
  br label %551

551:                                              ; preds = %550, %507
  br label %552

552:                                              ; preds = %551, %496
  br label %553

553:                                              ; preds = %552, %483
  br label %554

554:                                              ; preds = %553, %475
  br label %555

555:                                              ; preds = %554, %467
  br label %556

556:                                              ; preds = %555, %459
  br label %557

557:                                              ; preds = %556, %450
  br label %558

558:                                              ; preds = %557, %437
  br label %559

559:                                              ; preds = %558, %424
  br label %560

560:                                              ; preds = %559, %416
  br label %561

561:                                              ; preds = %560, %408
  br label %562

562:                                              ; preds = %561, %399
  br label %563

563:                                              ; preds = %562, %387
  br label %564

564:                                              ; preds = %563, %375
  br label %565

565:                                              ; preds = %564, %366
  br label %566

566:                                              ; preds = %565, %358
  br label %567

567:                                              ; preds = %566, %348
  br label %568

568:                                              ; preds = %567, %336
  br label %569

569:                                              ; preds = %568, %323
  br label %570

570:                                              ; preds = %569, %314
  br label %571

571:                                              ; preds = %570, %293
  br label %572

572:                                              ; preds = %571, %284
  br label %573

573:                                              ; preds = %572, %264
  br label %574

574:                                              ; preds = %573, %252
  br label %575

575:                                              ; preds = %574, %240
  br label %576

576:                                              ; preds = %575, %232
  br label %577

577:                                              ; preds = %576, %224
  br label %578

578:                                              ; preds = %577, %215
  br label %579

579:                                              ; preds = %578, %203
  br label %580

580:                                              ; preds = %579, %195
  br label %581

581:                                              ; preds = %580, %187
  br label %582

582:                                              ; preds = %581, %178
  br label %583

583:                                              ; preds = %582, %169
  br label %584

584:                                              ; preds = %583, %160
  br label %585

585:                                              ; preds = %584, %151
  br label %586

586:                                              ; preds = %585, %134
  br label %587

587:                                              ; preds = %586, %125
  br label %588

588:                                              ; preds = %587, %115
  br label %589

589:                                              ; preds = %588, %102
  br label %590

590:                                              ; preds = %589, %92
  br label %591

591:                                              ; preds = %590, %84
  br label %592

592:                                              ; preds = %591, %76
  br label %593

593:                                              ; preds = %592, %68
  br label %594

594:                                              ; preds = %593, %59
  br label %595

595:                                              ; preds = %594, %51
  br label %596

596:                                              ; preds = %595, %39
  br label %597

597:                                              ; preds = %596, %31
  %598 = load i64, i64* %11, align 8
  %599 = load i64, i64* @PSQL_CMD_SEND, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %605

601:                                              ; preds = %597
  %602 = load i32, i32* %9, align 4
  %603 = load i32, i32* %10, align 4
  %604 = call i32 @copy_previous_query(i32 %602, i32 %603)
  br label %605

605:                                              ; preds = %601, %597
  %606 = load i64, i64* %11, align 8
  ret i64 %606
}

declare dso_local i32 @conditional_active(i32) #1

declare dso_local i32 @is_branching_command(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @exec_command_a(i32, i32) #1

declare dso_local i64 @exec_command_C(i32, i32) #1

declare dso_local i64 @exec_command_connect(i32, i32) #1

declare dso_local i64 @exec_command_cd(i32, i32, i8*) #1

declare dso_local i64 @exec_command_conninfo(i32, i32) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i64 @exec_command_copy(i32, i32) #1

declare dso_local i64 @exec_command_copyright(i32, i32) #1

declare dso_local i64 @exec_command_crosstabview(i32, i32) #1

declare dso_local i64 @exec_command_d(i32, i32, i8*) #1

declare dso_local i64 @exec_command_edit(i32, i32, i32, i32) #1

declare dso_local i64 @exec_command_ef_ev(i32, i32, i32, i32) #1

declare dso_local i64 @exec_command_echo(i32, i32, i8*) #1

declare dso_local i64 @exec_command_elif(i32, i32, i32) #1

declare dso_local i64 @exec_command_else(i32, i32, i32) #1

declare dso_local i64 @exec_command_endif(i32, i32, i32) #1

declare dso_local i64 @exec_command_encoding(i32, i32) #1

declare dso_local i64 @exec_command_errverbose(i32, i32) #1

declare dso_local i64 @exec_command_f(i32, i32) #1

declare dso_local i64 @exec_command_g(i32, i32, i8*) #1

declare dso_local i64 @exec_command_gdesc(i32, i32) #1

declare dso_local i64 @exec_command_gexec(i32, i32) #1

declare dso_local i64 @exec_command_gset(i32, i32) #1

declare dso_local i64 @exec_command_help(i32, i32) #1

declare dso_local i64 @exec_command_html(i32, i32) #1

declare dso_local i64 @exec_command_include(i32, i32, i8*) #1

declare dso_local i64 @exec_command_if(i32, i32, i32) #1

declare dso_local i64 @exec_command_list(i32, i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @exec_command_lo(i32, i32, i8*) #1

declare dso_local i64 @exec_command_out(i32, i32) #1

declare dso_local i64 @exec_command_print(i32, i32, i32, i32) #1

declare dso_local i64 @exec_command_password(i32, i32) #1

declare dso_local i64 @exec_command_prompt(i32, i32, i8*) #1

declare dso_local i64 @exec_command_pset(i32, i32) #1

declare dso_local i64 @exec_command_quit(i32, i32) #1

declare dso_local i64 @exec_command_reset(i32, i32, i32) #1

declare dso_local i64 @exec_command_s(i32, i32) #1

declare dso_local i64 @exec_command_set(i32, i32) #1

declare dso_local i64 @exec_command_setenv(i32, i32, i8*) #1

declare dso_local i64 @exec_command_sf_sv(i32, i32, i8*, i32) #1

declare dso_local i64 @exec_command_t(i32, i32) #1

declare dso_local i64 @exec_command_T(i32, i32) #1

declare dso_local i64 @exec_command_timing(i32, i32) #1

declare dso_local i64 @exec_command_unset(i32, i32, i8*) #1

declare dso_local i64 @exec_command_write(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @exec_command_watch(i32, i32, i32, i32) #1

declare dso_local i64 @exec_command_x(i32, i32) #1

declare dso_local i64 @exec_command_z(i32, i32) #1

declare dso_local i64 @exec_command_shell_escape(i32, i32) #1

declare dso_local i64 @exec_command_slash_command_help(i32, i32) #1

declare dso_local i32 @copy_previous_query(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
