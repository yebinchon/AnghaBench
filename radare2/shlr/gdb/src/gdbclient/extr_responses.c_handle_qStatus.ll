; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_responses.c_handle_qStatus.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_responses.c_handle_qStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"T0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tnotrun:0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_qStatus(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %8, %1
  store i32 -1, i32* %2, align 4
  br label %61

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i8* @strdup(i32* %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @free(i8* %30)
  store i32 -1, i32* %2, align 4
  br label %61

32:                                               ; preds = %20
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = call i32 @send_ack(%struct.TYPE_4__* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @free(i8* %39)
  store i32 -1, i32* %2, align 4
  br label %61

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = call i32 @send_ack(%struct.TYPE_4__* %52)
  store i32 %53, i32* %2, align 4
  br label %61

54:                                               ; preds = %45
  %55 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %55, i8** %5, align 8
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = call i32 @send_ack(%struct.TYPE_4__* %57)
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @free(i8* %59)
  store i32 -1, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %49, %36, %29, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @strdup(i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @send_ack(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
