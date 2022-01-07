; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_parse_cmd.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_parse_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i32 }
%struct.gc_arena = type { i32 }

@MAX_PARMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SCRIPT-ARGV\00", align 1
@D_ARGV_PARSE_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argv_parse_cmd(%struct.argv* %0, i8* %1) #0 {
  %3 = alloca %struct.argv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gc_arena, align 4
  %9 = alloca i32, align 4
  store %struct.argv* %0, %struct.argv** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MAX_PARMS, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = call i32 (...) @gc_new()
  %16 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.argv*, %struct.argv** %3, align 8
  %18 = call i32 @argv_reset(%struct.argv* %17)
  %19 = load %struct.argv*, %struct.argv** %3, align 8
  %20 = call i32 @argv_extend(%struct.argv* %19, i32 1)
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @MAX_PARMS, align 4
  %23 = load i32, i32* @D_ARGV_PARSE_CMD, align 4
  %24 = call i32 @parse_line(i8* %21, i8** %14, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 %23, %struct.gc_arena* %8)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.argv*, %struct.argv** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %14, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @string_alloc(i8* %37, i32* null)
  %39 = call i32 @argv_append(%struct.argv* %33, i32 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %28

43:                                               ; preds = %28
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.argv*, %struct.argv** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @string_alloc(i8* %46, i32* null)
  %48 = call i32 @argv_append(%struct.argv* %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %43
  %50 = call i32 @gc_free(%struct.gc_arena* %8)
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_new(...) #2

declare dso_local i32 @argv_reset(%struct.argv*) #2

declare dso_local i32 @argv_extend(%struct.argv*, i32) #2

declare dso_local i32 @parse_line(i8*, i8**, i32, i8*, i32, i32, %struct.gc_arena*) #2

declare dso_local i32 @argv_append(%struct.argv*, i32) #2

declare dso_local i32 @string_alloc(i8*, i32*) #2

declare dso_local i32 @gc_free(%struct.gc_arena*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
