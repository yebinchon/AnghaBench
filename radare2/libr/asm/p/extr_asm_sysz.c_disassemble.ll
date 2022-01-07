; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_sysz.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_sysz.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64*, i32 }

@disassemble.omode = internal global i32 0, align 4
@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@cd = common dso_local global i64 0, align 8
@CS_ARCH_SYSZ = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ptr \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  %20 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* @cd, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @disassemble.omode, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @cs_close(i64* @cd)
  store i64 0, i64* @cd, align 8
  br label %29

29:                                               ; preds = %27, %23, %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* @disassemble.omode, align 4
  %33 = load i64, i64* @cd, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @CS_ARCH_SYSZ, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @cs_open(i32 %36, i32 %37, i64* @cd)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %107

42:                                               ; preds = %35
  %43 = load i64, i64* @cd, align 8
  %44 = load i32, i32* @CS_OPT_DETAIL, align 4
  %45 = load i32, i32* @CS_OPT_OFF, align 4
  %46 = call i32 @cs_option(i64 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %29
  %48 = load i64, i64* @cd, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @cs_disasm(i64 %48, i32* %49, i32 %50, i32 %51, i32 1, %struct.TYPE_9__** %14)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = call i8* @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %68, i8* %76, i64* %79)
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = call i8* @strstr(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %60
  %86 = load i8*, i8** %16, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load i8*, i8** %16, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = call i64 @strlen(i8* %90)
  %92 = add nsw i64 %91, 1
  %93 = call i32 @memmove(i8* %86, i8* %88, i64 %92)
  br label %94

94:                                               ; preds = %85, %60
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @r_asm_op_set_asm(%struct.TYPE_10__* %95, i8* %96)
  br label %98

98:                                               ; preds = %94, %55
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @cs_free(%struct.TYPE_9__* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %47
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %102, %41
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_9__**) #1

declare dso_local i8* @sdb_fmt(i8*, i32, i8*, i64*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @cs_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
