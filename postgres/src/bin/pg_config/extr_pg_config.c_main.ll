; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_config/extr_pg_config.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_config/extr_pg_config.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pg_config\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: could not find own program executable\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@info_items = common dso_local global %struct.TYPE_6__* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: invalid argument: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @set_pglocale_pgservice(i8* %18, i32 %19)
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @get_progname(i8* %23)
  store i8* %24, i8** @progname, align 8
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %49, %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %29
  %46 = call i32 (...) @help()
  %47 = call i32 @exit(i32 0) #4
  unreachable

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @find_my_exec(i8* %55, i8* %15)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i8*, i8** @progname, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %59, i8* %60, i8* %61)
  %63 = call i32 @exit(i32 1) #4
  unreachable

64:                                               ; preds = %52
  %65 = call %struct.TYPE_5__* @get_configdata(i8* %15, i64* %7)
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %7, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %80, i8* %86)
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %69

91:                                               ; preds = %69
  %92 = call i32 @exit(i32 0) #4
  unreachable

93:                                               ; preds = %64
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %156, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %159

98:                                               ; preds = %94
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %132, %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @info_items, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %135

107:                                              ; preds = %99
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @info_items, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %112, i8* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %107
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @info_items, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @show_item(i32 %127, %struct.TYPE_5__* %128, i64 %129)
  br label %135

131:                                              ; preds = %107
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %99

135:                                              ; preds = %121, %99
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @info_items, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %135
  %144 = load i32, i32* @stderr, align 4
  %145 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i8*, i8** @progname, align 8
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %144, i8* %145, i8* %146, i8* %151)
  %153 = call i32 (...) @advice()
  %154 = call i32 @exit(i32 1) #4
  unreachable

155:                                              ; preds = %135
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %94

159:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  %160 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #2

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #2

declare dso_local i8* @get_progname(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @help(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @find_my_exec(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local %struct.TYPE_5__* @get_configdata(i8*, i64*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @show_item(i32, %struct.TYPE_5__*, i64) #2

declare dso_local i32 @advice(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
