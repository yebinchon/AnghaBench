; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_buildDefaultACLCommands.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_buildDefaultACLCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ALTER DEFAULT PRIVILEGES FOR ROLE %s \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"IN SCHEMA %s \00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"SELECT pg_catalog.binary_upgrade_set_record_init_privs(true);\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"SELECT pg_catalog.binary_upgrade_set_record_init_privs(false);\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buildDefaultACLCommands(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, %struct.TYPE_8__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %19, align 8
  %21 = call %struct.TYPE_8__* (...) @createPQExpBuffer()
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = call i32 @fmtId(i8* %23)
  %25 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %9
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @fmtId(i8* %30)
  %32 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %9
  %34 = load i8*, i8** %15, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %16, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37, %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %43 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %53 = call i32 @buildACLCommands(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null, i8* %44, i8* %45, i8* %46, i8* %47, i32 %50, i32 %51, %struct.TYPE_8__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %57 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %56)
  store i32 0, i32* %10, align 4
  br label %79

58:                                               ; preds = %41
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %60 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %37
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %71 = call i32 @buildACLCommands(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null, i8* %62, i8* %63, i8* %64, i8* %65, i32 %68, i32 %69, %struct.TYPE_8__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %75 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %74)
  store i32 0, i32* %10, align 4
  br label %79

76:                                               ; preds = %61
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %78 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %77)
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %73, %55
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_8__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @buildACLCommands(i8*, i32*, i32*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
