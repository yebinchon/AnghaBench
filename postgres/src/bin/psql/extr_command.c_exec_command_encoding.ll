; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_encoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OT_NORMAL = common dso_local global i32 0, align 4
@pset = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s: invalid encoding name or conversion procedure not found\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ENCODING\00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @exec_command_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_encoding(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @OT_NORMAL, align 4
  %11 = call i8* @psql_scan_slash_option(i32 %9, i32 %10, i32* null, i32 0)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %16 = call i32 @pg_encoding_to_char(i32 %15)
  %17 = call i32 @puts(i32 %16)
  br label %37

18:                                               ; preds = %8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3), align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @PQsetClientEncoding(i32 %19, i8* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @pg_log_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %34

26:                                               ; preds = %18
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3), align 4
  %28 = call i32 @PQclientEncoding(i32 %27)
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2, i32 0, i32 0), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %32 = call i32 @pg_encoding_to_char(i32 %31)
  %33 = call i32 @SetVariable(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %34, %14
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ignore_slash_options(i32 %39)
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  ret i32 %42
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @pg_encoding_to_char(i32) #1

declare dso_local i32 @PQsetClientEncoding(i32, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i32 @PQclientEncoding(i32) #1

declare dso_local i32 @SetVariable(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
