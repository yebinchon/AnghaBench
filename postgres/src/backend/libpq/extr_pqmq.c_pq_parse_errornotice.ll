; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqmq.c_pq_parse_errornotice.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqmq.c_pq_parse_errornotice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32 }

@ERROR = common dso_local global i8* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@DEBUG1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"LOG\00", align 1
@LOG = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@INFO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"NOTICE\00", align 1
@NOTICE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@WARNING = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"FATAL\00", align 1
@FATAL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"PANIC\00", align 1
@PANIC = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"unrecognized error severity: \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"invalid SQLSTATE: \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"unrecognized error field code: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pq_parse_errornotice(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call i32 @MemSet(%struct.TYPE_4__* %7, i32 0, i32 144)
  %9 = load i8*, i8** @ERROR, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 16
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @CurrentMemoryContext, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 17
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %213, %2
  %16 = load i32, i32* %3, align 4
  %17 = call signext i8 @pq_getmsgbyte(i32 %16)
  store i8 %17, i8* %5, align 1
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pq_getmsgend(i32 %22)
  br label %214

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = call i8* @pq_getmsgrawstring(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8, i8* %5, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %208 [
    i32 135, label %29
    i32 134, label %30
    i32 130, label %106
    i32 137, label %133
    i32 139, label %138
    i32 138, label %143
    i32 129, label %148
    i32 141, label %153
    i32 140, label %158
    i32 143, label %163
    i32 136, label %168
    i32 128, label %173
    i32 145, label %178
    i32 142, label %183
    i32 144, label %188
    i32 133, label %193
    i32 131, label %198
    i32 132, label %203
  ]

29:                                               ; preds = %24
  br label %213

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** @DEBUG1, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 16
  store i8* %35, i8** %37, align 8
  br label %105

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** @LOG, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 16
  store i8* %43, i8** %45, align 8
  br label %104

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** @INFO, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 16
  store i8* %51, i8** %53, align 8
  br label %103

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** @NOTICE, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 16
  store i8* %59, i8** %61, align 8
  br label %102

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** @WARNING, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 16
  store i8* %67, i8** %69, align 8
  br label %101

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** @ERROR, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 16
  store i8* %75, i8** %77, align 8
  br label %100

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** @FATAL, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 16
  store i8* %83, i8** %85, align 8
  br label %99

86:                                               ; preds = %78
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8*, i8** @PANIC, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 16
  store i8* %91, i8** %93, align 8
  br label %98

94:                                               ; preds = %86
  %95 = load i8*, i8** @ERROR, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i8*, i8*, ...) @elog(i8* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %82
  br label %100

100:                                              ; preds = %99, %74
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %58
  br label %103

103:                                              ; preds = %102, %50
  br label %104

104:                                              ; preds = %103, %42
  br label %105

105:                                              ; preds = %104, %34
  br label %213

106:                                              ; preds = %24
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = icmp ne i32 %108, 5
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8*, i8** @ERROR, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 (i8*, i8*, ...) @elog(i8* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 4
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @MAKE_SQLSTATE(i8 signext %117, i8 signext %120, i8 signext %123, i8 signext %126, i8 signext %129)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 15
  store i32 %130, i32* %132, align 8
  br label %213

133:                                              ; preds = %24
  %134 = load i8*, i8** %6, align 8
  %135 = call i8* @pstrdup(i8* %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 14
  store i8* %135, i8** %137, align 8
  br label %213

138:                                              ; preds = %24
  %139 = load i8*, i8** %6, align 8
  %140 = call i8* @pstrdup(i8* %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 13
  store i8* %140, i8** %142, align 8
  br label %213

143:                                              ; preds = %24
  %144 = load i8*, i8** %6, align 8
  %145 = call i8* @pstrdup(i8* %144)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 12
  store i8* %145, i8** %147, align 8
  br label %213

148:                                              ; preds = %24
  %149 = load i8*, i8** %6, align 8
  %150 = call i8* @pg_strtoint32(i8* %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 11
  store i8* %150, i8** %152, align 8
  br label %213

153:                                              ; preds = %24
  %154 = load i8*, i8** %6, align 8
  %155 = call i8* @pg_strtoint32(i8* %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 10
  store i8* %155, i8** %157, align 8
  br label %213

158:                                              ; preds = %24
  %159 = load i8*, i8** %6, align 8
  %160 = call i8* @pstrdup(i8* %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 9
  store i8* %160, i8** %162, align 8
  br label %213

163:                                              ; preds = %24
  %164 = load i8*, i8** %6, align 8
  %165 = call i8* @pstrdup(i8* %164)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 8
  store i8* %165, i8** %167, align 8
  br label %213

168:                                              ; preds = %24
  %169 = load i8*, i8** %6, align 8
  %170 = call i8* @pstrdup(i8* %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 7
  store i8* %170, i8** %172, align 8
  br label %213

173:                                              ; preds = %24
  %174 = load i8*, i8** %6, align 8
  %175 = call i8* @pstrdup(i8* %174)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  br label %213

178:                                              ; preds = %24
  %179 = load i8*, i8** %6, align 8
  %180 = call i8* @pstrdup(i8* %179)
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 5
  store i8* %180, i8** %182, align 8
  br label %213

183:                                              ; preds = %24
  %184 = load i8*, i8** %6, align 8
  %185 = call i8* @pstrdup(i8* %184)
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  br label %213

188:                                              ; preds = %24
  %189 = load i8*, i8** %6, align 8
  %190 = call i8* @pstrdup(i8* %189)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  br label %213

193:                                              ; preds = %24
  %194 = load i8*, i8** %6, align 8
  %195 = call i8* @pstrdup(i8* %194)
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  br label %213

198:                                              ; preds = %24
  %199 = load i8*, i8** %6, align 8
  %200 = call i8* @pg_strtoint32(i8* %199)
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  br label %213

203:                                              ; preds = %24
  %204 = load i8*, i8** %6, align 8
  %205 = call i8* @pstrdup(i8* %204)
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  br label %213

208:                                              ; preds = %24
  %209 = load i8*, i8** @ERROR, align 8
  %210 = load i8, i8* %5, align 1
  %211 = sext i8 %210 to i32
  %212 = call i32 (i8*, i8*, ...) @elog(i8* %209, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %208, %203, %198, %193, %188, %183, %178, %173, %168, %163, %158, %153, %148, %143, %138, %133, %114, %105, %29
  br label %15

214:                                              ; preds = %21
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local signext i8 @pq_getmsgbyte(i32) #1

declare dso_local i32 @pq_getmsgend(i32) #1

declare dso_local i8* @pq_getmsgrawstring(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @elog(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MAKE_SQLSTATE(i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @pg_strtoint32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
