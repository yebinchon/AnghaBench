; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/i4004/extr_i4004dis.c_i4004dis.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/i4004/extr_i4004dis.c_i4004dis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"jcn %d 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"src r%d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fim r%d, 0x%02x\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"jin r%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fin r%d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"jun 0x%03x\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"jms 0x%03x\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"inc r%d\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"isz r%d, 0x%02x\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"add r%d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"sub r%d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ld r%d\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"xch r%d\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"bbl %d\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ldm %d\00", align 1
@i4004_e = common dso_local global i8** null, align 8
@i4004_f = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @i4004dis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i4004dis(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @i4004_get_ins_len(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 240
  %18 = ashr i32 %17, 4
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %10, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %132

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %124 [
    i32 0, label %30
    i32 1, label %35
    i32 2, label %41
    i32 3, label %56
    i32 4, label %69
    i32 5, label %77
    i32 6, label %85
    i32 7, label %88
    i32 8, label %94
    i32 9, label %97
    i32 10, label %100
    i32 11, label %103
    i32 12, label %106
    i32 13, label %109
    i32 14, label %112
    i32 15, label %118
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %34, i8** %11, align 8
  br label %124

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39)
  store i8* %40, i8** %11, align 8
  br label %124

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 14
  %47 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  store i8* %47, i8** %11, align 8
  br label %55

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 14
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %53)
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %48, %44
  br label %124

56:                                               ; preds = %28
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 14
  %63 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  store i8* %63, i8** %11, align 8
  br label %68

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 14
  %67 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  store i8* %67, i8** %11, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %124

69:                                               ; preds = %28
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 %70, 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  store i8* %76, i8** %11, align 8
  br label %124

77:                                               ; preds = %28
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %78, 8
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  %84 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  store i8* %84, i8** %11, align 8
  br label %124

85:                                               ; preds = %28
  %86 = load i32, i32* %10, align 4
  %87 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %86)
  store i8* %87, i8** %11, align 8
  br label %124

88:                                               ; preds = %28
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %89, i32 %92)
  store i8* %93, i8** %11, align 8
  br label %124

94:                                               ; preds = %28
  %95 = load i32, i32* %10, align 4
  %96 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %95)
  store i8* %96, i8** %11, align 8
  br label %124

97:                                               ; preds = %28
  %98 = load i32, i32* %10, align 4
  %99 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %98)
  store i8* %99, i8** %11, align 8
  br label %124

100:                                              ; preds = %28
  %101 = load i32, i32* %10, align 4
  %102 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %101)
  store i8* %102, i8** %11, align 8
  br label %124

103:                                              ; preds = %28
  %104 = load i32, i32* %10, align 4
  %105 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %104)
  store i8* %105, i8** %11, align 8
  br label %124

106:                                              ; preds = %28
  %107 = load i32, i32* %10, align 4
  %108 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %107)
  store i8* %108, i8** %11, align 8
  br label %124

109:                                              ; preds = %28
  %110 = load i32, i32* %10, align 4
  %111 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %110)
  store i8* %111, i8** %11, align 8
  br label %124

112:                                              ; preds = %28
  %113 = load i8**, i8*** @i4004_e, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %11, align 8
  br label %124

118:                                              ; preds = %28
  %119 = load i8**, i8*** @i4004_f, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %11, align 8
  br label %124

124:                                              ; preds = %28, %118, %112, %109, %106, %103, %100, %97, %94, %88, %85, %77, %69, %68, %55, %35, %30
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @r_strbuf_set(i32* %126, i8* %127)
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  store i32 %129, i32* %4, align 4
  br label %132

132:                                              ; preds = %124, %25
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @i4004_get_ins_len(i32) #1

declare dso_local i8* @sdb_fmt(i8*, i32, ...) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
