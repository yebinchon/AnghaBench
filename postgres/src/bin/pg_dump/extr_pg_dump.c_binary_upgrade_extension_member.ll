; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_binary_upgrade_extension_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_binary_upgrade_extension_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8*, i32*, i32 }

@DO_EXTENSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"could not find parent extension for %s %s\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"\0A-- For binary upgrade, handle extension membership the hard way\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ALTER EXTENSION %s ADD %s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, i8*, i8*, i8*)* @binary_upgrade_extension_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binary_upgrade_extension_member(i32 %0, %struct.TYPE_4__* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %80

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_4__* @findObjectByDumpId(i32 %32)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DO_EXTENSION, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %47

43:                                               ; preds = %36, %25
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %19

47:                                               ; preds = %42, %19
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @appendPQExpBufferStr(i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @fmtId(i8* %60)
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %61, i8* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = call i8* @fmtId(i8* %73)
  %75 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %71, %66, %54
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 (i32, i8*, i8*, ...) @appendPQExpBuffer(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %17
  ret void
}

declare dso_local %struct.TYPE_4__* @findObjectByDumpId(i32) #1

declare dso_local i32 @fatal(i8*, i8*, i8*) #1

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i8*, ...) #1

declare dso_local i8* @fmtId(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
