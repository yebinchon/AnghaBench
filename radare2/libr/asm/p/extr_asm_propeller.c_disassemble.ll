; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_propeller.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_propeller.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.propeller_cmd = type { i32, i64*, i64* }

@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.propeller_cmd, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @propeller_decode_command(i32* %12, %struct.propeller_cmd* %10)
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = ptrtoint i64* %27 to i32
  %29 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i64* %32)
  store i8* %33, i8** %9, align 8
  br label %51

34:                                               ; preds = %19, %4
  %35 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64* %44)
  store i8* %45, i8** %9, align 8
  br label %50

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @r_asm_op_set_asm(%struct.TYPE_4__* %52, i8* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32 @propeller_decode_command(i32*, %struct.propeller_cmd*) #1

declare dso_local i8* @sdb_fmt(i8*, i32, ...) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
