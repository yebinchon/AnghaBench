; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-print.c_PQdisplayTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-print.c_PQdisplayTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\0AQuery returned %d row%s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@DEFAULT_FIELD_SEP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PQdisplayTuples(i32* %0, i32* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @PQnfields(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @PQntuples(i32* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32*, i32** @stdout, align 8
  store i32* %30, i32** %8, align 8
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %95

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @stderr, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i8* @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* %47)
  %49 = call i32 (...) @abort() #3
  unreachable

50:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %91, %50
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i8* @PQfname(i32* %56, i32 %57)
  %59 = call i32 @strlen(i8* %58)
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %87, %55
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @PQgetlength(i32* %69, i32 %70, i32 %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32*, i32** %17, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %73, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load i32, i32* %18, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %68
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %64

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %51

94:                                               ; preds = %51
  br label %95

95:                                               ; preds = %94, %31
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %158

98:                                               ; preds = %95
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %127, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i8* @PQfname(i32* %104, i32 %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @fputs(i8* %106, i32* %107)
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i8* @PQfname(i32* %112, i32 %113)
  %115 = call i32 @strlen(i8* %114)
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @fill(i32 %115, i32 %120, i8 signext 32, i32* %121)
  br label %123

123:                                              ; preds = %111, %103
  %124 = load i8*, i8** %10, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @fputs(i8* %124, i32* %125)
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %99

130:                                              ; preds = %99
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %152, %130
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i32*, i32** %17, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @fill(i32 0, i32 %145, i8 signext 45, i32* %146)
  br label %148

148:                                              ; preds = %140, %137
  %149 = load i8*, i8** %10, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @fputs(i8* %149, i32* %150)
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %133

155:                                              ; preds = %133
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 (i32*, i8*, ...) @fprintf(i32* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %95
  store i32 0, i32* %13, align 4
  br label %159

159:                                              ; preds = %200, %158
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %203

163:                                              ; preds = %159
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %194, %163
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %197

168:                                              ; preds = %164
  %169 = load i32*, i32** %8, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i8* @PQgetvalue(i32* %170, i32 %171, i32 %172)
  %174 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %173)
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %168
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = call i8* @PQgetvalue(i32* %178, i32 %179, i32 %180)
  %182 = call i32 @strlen(i8* %181)
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = call i32 @fill(i32 %182, i32 %187, i8 signext 32, i32* %188)
  br label %190

190:                                              ; preds = %177, %168
  %191 = load i8*, i8** %10, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = call i32 @fputs(i8* %191, i32* %192)
  br label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %14, align 4
  br label %164

197:                                              ; preds = %164
  %198 = load i32*, i32** %8, align 8
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %159

203:                                              ; preds = %159
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %203
  %207 = load i32*, i32** %8, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 @PQntuples(i32* %208)
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 @PQntuples(i32* %210)
  %212 = icmp eq i32 %211, 1
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %209, i8* %214)
  br label %216

216:                                              ; preds = %206, %203
  %217 = load i32*, i32** %8, align 8
  %218 = call i32 @fflush(i32* %217)
  %219 = load i32*, i32** %17, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 @free(i32* %222)
  br label %224

224:                                              ; preds = %221, %216
  ret void
}

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @libpq_gettext(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @PQfname(i32*, i32) #1

declare dso_local i32 @PQgetlength(i32*, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fill(i32, i32, i8 signext, i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
