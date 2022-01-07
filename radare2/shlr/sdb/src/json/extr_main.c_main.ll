; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/json/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/json/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c">>>> %s <<<<\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"glossary.title\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"patata\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"set failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"-- output --\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* @stdin, align 4
  %13 = call i32 @fread(i8* %11, i32 1, i32 4096, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %21 = call i8* @sdb_json_unindent(i8* %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %24 = call i8* @sdb_json_indent(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @api_json_set(i8* %26, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @free(i8* %34)
  br label %38

36:                                               ; preds = %2
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @json_get(i8* %42, i8* %43)
  store i32 %44, i32* %6, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %46 = call i32 @rangstr_print(i32* %6)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sdb_json_unindent(i8*) #1

declare dso_local i8* @sdb_json_indent(i8*, i8*) #1

declare dso_local i8* @api_json_set(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_get(i8*, i8*) #1

declare dso_local i32 @rangstr_print(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
