; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_read.c_nodeRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_read.c_nodeRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"did not find '}' at end of input node\00", align 1
@NIL = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unterminated List structure\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unrecognized integer: \22%.*s\22\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unrecognized OID: \22%.*s\22\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unexpected right parenthesis\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unrecognized token: \22%.*s\22\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nodeRead(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = call i8* @pg_strtok(i32* %5)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %230

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @nodeTokenType(i8* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  switch i32 %28, label %222 [
    i32 135, label %29
    i32 134, label %44
    i32 132, label %164
    i32 133, label %167
    i32 129, label %177
    i32 130, label %182
    i32 128, label %197
    i32 131, label %205
  ]

29:                                               ; preds = %23
  %30 = call i32* (...) @parseNodeString()
  store i32* %30, i32** %6, align 8
  %31 = call i8* @pg_strtok(i32* %5)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 125
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %29
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 (i32, i8*, ...) @elog(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %34
  br label %227

44:                                               ; preds = %23
  %45 = load i32*, i32** @NIL, align 8
  store i32* %45, i32** %8, align 8
  %46 = call i8* @pg_strtok(i32* %5)
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ERROR, align 4
  %51 = call i32 (i32, i8*, ...) @elog(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 105
  br i1 %60, label %61, label %96

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %91, %61
  %63 = call i8* @pg_strtok(i32* %5)
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @ERROR, align 4
  %68 = call i32 (i32, i8*, ...) @elog(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 41
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %95

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @strtol(i8* %77, i8** %10, i32 10)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = icmp ne i8* %80, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 (i32, i8*, ...) @elog(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %88, i8* %89)
  br label %91

91:                                               ; preds = %86, %76
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32* @lappend_int(i32* %92, i32 %93)
  store i32* %94, i32** %8, align 8
  br label %62

95:                                               ; preds = %75
  br label %162

96:                                               ; preds = %55, %52
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %139

99:                                               ; preds = %96
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 111
  br i1 %104, label %105, label %139

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %134, %105
  %107 = call i8* @pg_strtok(i32* %5)
  store i8* %107, i8** %4, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @ERROR, align 4
  %112 = call i32 (i32, i8*, ...) @elog(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 41
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %138

120:                                              ; preds = %113
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strtoul(i8* %121, i8** %12, i32 10)
  store i32 %122, i32* %11, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = icmp ne i8* %123, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 (i32, i8*, ...) @elog(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %131, i8* %132)
  br label %134

134:                                              ; preds = %129, %120
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32* @lappend_oid(i32* %135, i32 %136)
  store i32* %137, i32** %8, align 8
  br label %106

138:                                              ; preds = %119
  br label %161

139:                                              ; preds = %99, %96
  br label %140

140:                                              ; preds = %159, %139
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 41
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %160

147:                                              ; preds = %140
  %148 = load i32*, i32** %8, align 8
  %149 = load i8*, i8** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i8* @nodeRead(i8* %149, i32 %150)
  %152 = call i32* @lappend(i32* %148, i8* %151)
  store i32* %152, i32** %8, align 8
  %153 = call i8* @pg_strtok(i32* %5)
  store i8* %153, i8** %4, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i32, i32* @ERROR, align 4
  %158 = call i32 (i32, i8*, ...) @elog(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %147
  br label %140

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160, %138
  br label %162

162:                                              ; preds = %161, %95
  %163 = load i32*, i32** %8, align 8
  store i32* %163, i32** %6, align 8
  br label %227

164:                                              ; preds = %23
  %165 = load i32, i32* @ERROR, align 4
  %166 = call i32 (i32, i8*, ...) @elog(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %227

167:                                              ; preds = %23
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32* null, i32** %6, align 8
  br label %176

171:                                              ; preds = %167
  %172 = load i32, i32* @ERROR, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i8*, i8** %4, align 8
  %175 = call i32 (i32, i8*, ...) @elog(i32 %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %173, i8* %174)
  store i32* null, i32** %6, align 8
  br label %176

176:                                              ; preds = %171, %170
  br label %227

177:                                              ; preds = %23
  %178 = load i8*, i8** %4, align 8
  %179 = call i32 @atoi(i8* %178)
  %180 = call i64 @makeInteger(i32 %179)
  %181 = inttoptr i64 %180 to i32*
  store i32* %181, i32** %6, align 8
  br label %227

182:                                              ; preds = %23
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  %185 = call i8* @palloc(i32 %184)
  store i8* %185, i8** %13, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @memcpy(i8* %186, i8* %187, i32 %188)
  %190 = load i8*, i8** %13, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  store i8 0, i8* %193, align 1
  %194 = load i8*, i8** %13, align 8
  %195 = call i64 @makeFloat(i8* %194)
  %196 = inttoptr i64 %195 to i32*
  store i32* %196, i32** %6, align 8
  br label %227

197:                                              ; preds = %23
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i32, i32* %5, align 4
  %201 = sub nsw i32 %200, 2
  %202 = call i32 @debackslash(i8* %199, i32 %201)
  %203 = call i64 @makeString(i32 %202)
  %204 = inttoptr i64 %203 to i32*
  store i32* %204, i32** %6, align 8
  br label %227

205:                                              ; preds = %23
  %206 = load i32, i32* %5, align 4
  %207 = call i8* @palloc(i32 %206)
  store i8* %207, i8** %14, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load i8*, i8** %4, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i32, i32* %5, align 4
  %212 = sub nsw i32 %211, 1
  %213 = call i32 @memcpy(i8* %208, i8* %210, i32 %212)
  %214 = load i8*, i8** %14, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  store i8 0, i8* %218, align 1
  %219 = load i8*, i8** %14, align 8
  %220 = call i64 @makeBitString(i8* %219)
  %221 = inttoptr i64 %220 to i32*
  store i32* %221, i32** %6, align 8
  br label %227

222:                                              ; preds = %23
  %223 = load i32, i32* @ERROR, align 4
  %224 = load i64, i64* %7, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i32 (i32, i8*, ...) @elog(i32 %223, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %225)
  store i32* null, i32** %6, align 8
  br label %227

227:                                              ; preds = %222, %205, %197, %182, %177, %176, %164, %162, %43
  %228 = load i32*, i32** %6, align 8
  %229 = bitcast i32* %228 to i8*
  store i8* %229, i8** %3, align 8
  br label %230

230:                                              ; preds = %227, %21
  %231 = load i8*, i8** %3, align 8
  ret i8* %231
}

declare dso_local i8* @pg_strtok(i32*) #1

declare dso_local i64 @nodeTokenType(i8*, i32) #1

declare dso_local i32* @parseNodeString(...) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @lappend_int(i32*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i64 @makeInteger(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @makeFloat(i8*) #1

declare dso_local i64 @makeString(i32) #1

declare dso_local i32 @debackslash(i8*, i32) #1

declare dso_local i64 @makeBitString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
