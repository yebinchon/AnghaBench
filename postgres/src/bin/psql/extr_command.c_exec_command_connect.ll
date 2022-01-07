; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_connect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_command_connect.prefix = internal constant [17 x i8] c"-reuse-previous=\00", align 16
@TRI_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"-reuse-previous\00", align 1
@TRI_YES = common dso_local global i32 0, align 4
@TRI_NO = common dso_local global i32 0, align 4
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @exec_command_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_connect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %2
  %15 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @read_connect_arg(i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @exec_command_connect.prefix, i64 0, i64 0), i32 16)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 17
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  %28 = call i32 @ParseVariableBool(i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @TRI_YES, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @TRI_NO, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %10, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i8* @read_connect_arg(i32 %42)
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %38, %24
  br label %45

45:                                               ; preds = %44, %20, %14
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = call i8* @read_connect_arg(i32 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i8* @read_connect_arg(i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i8* @read_connect_arg(i32 %53)
  store i8* %54, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @do_connect(i32 %55, i8* %56, i8* %57, i8* %58, i8* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %48, %45
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @free(i8* %68)
  br label %73

70:                                               ; preds = %2
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ignore_slash_options(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  ret i32 %81
}

declare dso_local i8* @read_connect_arg(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ParseVariableBool(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @do_connect(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
