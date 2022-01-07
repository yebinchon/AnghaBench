; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_macdef.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_macdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }

@macnum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Limit of 16 macros have already been defined\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@line = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(macro name) \00", align 1
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Usage: %s macro_name\0A\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"Enter macro line by line, terminating it with a null line\0A\00", align 1
@macros = common dso_local global %struct.TYPE_2__* null, align 8
@macbuf = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"macdef:end of file encountered\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Macro not defined - 4k buffer exceeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macdef(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* @macnum, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fflush(i32 %11)
  store i32 -1, i32* @code, align 4
  br label %171

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32*, i32** @line, align 8
  %18 = call i32 @strcat(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = load i32*, i32** @line, align 8
  %23 = load i32*, i32** @line, align 8
  %24 = call i64 @strlen(i32* %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @gets(i32* %25)
  %27 = call i32 (...) @makeargv()
  %28 = load i32, i32* @margc, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i8**, i8*** @margv, align 8
  store i8** %29, i8*** %4, align 8
  br label %30

30:                                               ; preds = %16, %13
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @fflush(i32 %38)
  store i32 -1, i32* @code, align 4
  br label %171

40:                                               ; preds = %30
  %41 = load i64, i64* @interactive, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fflush(i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %49 = load i32, i32* @macnum, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strncpy(i32 %53, i8* %56, i32 8)
  %58 = load i32, i32* @macnum, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load i8*, i8** @macbuf, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %63 = load i32, i32* @macnum, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %61, i8** %66, align 8
  br label %81

67:                                               ; preds = %47
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %69 = load i32, i32* @macnum, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %77 = load i32, i32* @macnum, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* %75, i8** %80, align 8
  br label %81

81:                                               ; preds = %67, %60
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %83 = load i32, i32* @macnum, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %5, align 8
  br label %88

88:                                               ; preds = %142, %81
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** @macbuf, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4096
  %92 = icmp ne i8* %89, %91
  br i1 %92, label %93, label %145

93:                                               ; preds = %88
  %94 = call signext i8 (...) @getchar()
  %95 = sext i8 %94 to i32
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @EOF, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @fflush(i32 %100)
  store i32 -1, i32* @code, align 4
  br label %171

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %5, align 8
  store i8 %104, i8* %105, align 1
  %106 = sext i8 %104 to i32
  %107 = icmp eq i32 %106, 10
  br i1 %107, label %108, label %142

108:                                              ; preds = %102
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %111 = load i32, i32* @macnum, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = icmp eq i8* %109, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load i8*, i8** %5, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %120 = load i32, i32* @macnum, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @macnum, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i8* %118, i8** %124, align 8
  store i32 0, i32* @code, align 4
  br label %171

125:                                              ; preds = %108
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 -1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 -1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %135 = load i32, i32* @macnum, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @macnum, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i8* %133, i8** %139, align 8
  store i32 0, i32* @code, align 4
  br label %171

140:                                              ; preds = %125
  %141 = load i8*, i8** %5, align 8
  store i8 0, i8* %141, align 1
  br label %142

142:                                              ; preds = %140, %102
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %5, align 8
  br label %88

145:                                              ; preds = %88
  br label %146

146:                                              ; preds = %145, %170
  br label %147

147:                                              ; preds = %157, %146
  %148 = call signext i8 (...) @getchar()
  %149 = sext i8 %148 to i32
  store i32 %149, i32* %6, align 4
  %150 = icmp ne i32 %149, 10
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @EOF, align 4
  %154 = icmp ne i32 %152, %153
  br label %155

155:                                              ; preds = %151, %147
  %156 = phi i1 [ false, %147 ], [ %154, %151 ]
  br i1 %156, label %157, label %158

157:                                              ; preds = %155
  br label %147

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @EOF, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = call signext i8 (...) @getchar()
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 10
  br i1 %165, label %166, label %170

166:                                              ; preds = %162, %158
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %168 = load i32, i32* @stdout, align 4
  %169 = call i32 @fflush(i32 %168)
  store i32 -1, i32* @code, align 4
  br label %171

170:                                              ; preds = %162
  br label %146

171:                                              ; preds = %166, %131, %117, %98, %33, %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local signext i8 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
