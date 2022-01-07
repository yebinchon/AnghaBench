; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_put.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(local-file) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"usage:%s local-file remote-file\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"(remote-file) \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"APPE\00", align 1
@sunique = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"STOU\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %11, %2
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32*, i32** @line, align 8
  %26 = call i32 @strcat(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fflush(i32 %28)
  %30 = load i32*, i32** @line, align 8
  %31 = load i32*, i32** @line, align 8
  %32 = call i64 @strlen(i32* %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @gets(i32* %33)
  %35 = call i32 (...) @makeargv()
  %36 = load i32, i32* @margc, align 4
  store i32 %36, i32* %3, align 4
  %37 = load i8**, i8*** @margv, align 8
  store i8** %37, i8*** %4, align 8
  br label %38

38:                                               ; preds = %24, %21
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fflush(i32 %47)
  store i32 -1, i32* @code, align 4
  br label %164

49:                                               ; preds = %38
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32*, i32** @line, align 8
  %54 = call i32 @strcat(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 @fflush(i32 %56)
  %58 = load i32*, i32** @line, align 8
  %59 = load i32*, i32** @line, align 8
  %60 = call i64 @strlen(i32* %59)
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @gets(i32* %61)
  %63 = call i32 (...) @makeargv()
  %64 = load i32, i32* @margc, align 4
  store i32 %64, i32* %3, align 4
  %65 = load i8**, i8*** @margv, align 8
  store i8** %65, i8*** %4, align 8
  br label %66

66:                                               ; preds = %52, %49
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %42

70:                                               ; preds = %66
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %7, align 8
  %74 = load i8**, i8*** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %8, align 8
  %77 = load i8**, i8*** %4, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = call i32 @globulize(i8** %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  store i32 -1, i32* @code, align 4
  br label %164

82:                                               ; preds = %70
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load i8**, i8*** %4, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %4, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 2
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %88, %82
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 97
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %114

109:                                              ; preds = %100
  %110 = load i64, i64* @sunique, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  br label %114

114:                                              ; preds = %109, %108
  %115 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %108 ], [ %113, %109 ]
  store i8* %115, i8** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load i64, i64* @ntflag, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i8**, i8*** %4, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @dotrans(i8* %124)
  %126 = load i8**, i8*** %4, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 2
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %121, %118, %114
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i64, i64* @mapflag, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i8**, i8*** %4, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @domap(i8* %137)
  %139 = load i8**, i8*** %4, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 2
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %134, %131, %128
  %142 = load i8*, i8** %5, align 8
  %143 = load i8**, i8*** %4, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i8**, i8*** %4, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 2
  %148 = load i8*, i8** %147, align 8
  %149 = load i8**, i8*** %4, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = icmp ne i8* %151, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %141
  %155 = load i8**, i8*** %4, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 2
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = icmp ne i8* %157, %158
  br label %160

160:                                              ; preds = %154, %141
  %161 = phi i1 [ true, %141 ], [ %159, %154 ]
  %162 = zext i1 %161 to i32
  %163 = call i32 @sendrequest(i8* %142, i8* %145, i8* %148, i32 %162)
  br label %164

164:                                              ; preds = %160, %81, %42
  ret void
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @globulize(i8**) #1

declare dso_local i8* @dotrans(i8*) #1

declare dso_local i8* @domap(i8*) #1

declare dso_local i32 @sendrequest(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
