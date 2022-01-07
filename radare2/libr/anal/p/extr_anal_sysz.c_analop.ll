; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sysz.c_analop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sysz.c_analop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i8*, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@CS_ARCH_SYSZ = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NULL = common dso_local global i8* null, align 8
@CS_ERR_OK = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_ON = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_ILL = common dso_local global i8* null, align 8
@R_ANAL_OP_MASK_OPEX = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@UT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32, i32*, i32, i32)* @analop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analop(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__, align 4
  %19 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* @CS_ARCH_SYSZ, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @cs_open(i32 %21, i32 %22, i32* %13)
  store i32 %23, i32* %16, align 4
  %24 = load i8*, i8** @R_ANAL_OP_TYPE_NULL, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = call i32 @r_strbuf_init(i32* %32)
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @CS_ERR_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %121

37:                                               ; preds = %6
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @CS_OPT_DETAIL, align 4
  %40 = load i32, i32* @CS_OPT_ON, align 4
  %41 = call i32 @cs_option(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @cs_disasm(i32 %42, i32* %43, i32 %44, i32 %45, i32 1, %struct.TYPE_8__** %14)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %116

53:                                               ; preds = %37
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @R_ANAL_OP_MASK_OPEX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = call i32 @opex(i32* %60, i32 %61, %struct.TYPE_8__* %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %115 [
    i32 160, label %73
    i32 162, label %73
    i32 164, label %77
    i32 161, label %81
    i32 178, label %81
    i32 176, label %81
    i32 177, label %81
    i32 173, label %81
    i32 175, label %81
    i32 174, label %81
    i32 172, label %81
    i32 170, label %81
    i32 171, label %81
    i32 167, label %81
    i32 169, label %81
    i32 168, label %81
    i32 166, label %81
    i32 165, label %81
    i32 179, label %81
    i32 163, label %81
    i32 159, label %81
    i32 158, label %81
    i32 156, label %85
    i32 154, label %85
    i32 139, label %85
    i32 152, label %85
    i32 140, label %85
    i32 153, label %85
    i32 137, label %85
    i32 150, label %85
    i32 136, label %85
    i32 149, label %85
    i32 138, label %85
    i32 151, label %85
    i32 135, label %85
    i32 148, label %85
    i32 133, label %85
    i32 146, label %85
    i32 134, label %85
    i32 147, label %85
    i32 131, label %85
    i32 144, label %85
    i32 130, label %85
    i32 143, label %85
    i32 132, label %85
    i32 145, label %85
    i32 129, label %85
    i32 142, label %85
    i32 128, label %85
    i32 141, label %85
    i32 155, label %85
    i32 157, label %102
  ]

73:                                               ; preds = %64, %64
  %74 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  br label %115

77:                                               ; preds = %64
  %78 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  br label %115

81:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %82 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  br label %115

85:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %86 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = call i32 @INSOP(i32 0)
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %115

102:                                              ; preds = %64
  %103 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = call i32 @INSOP(i32 0)
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @UT64_MAX, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %64, %102, %85, %81, %77, %73
  br label %116

116:                                              ; preds = %115, %49
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @cs_free(%struct.TYPE_8__* %117, i32 %118)
  %120 = call i32 @cs_close(i32* %13)
  br label %121

121:                                              ; preds = %116, %6
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  ret i32 %124
}

declare dso_local i32 @cs_open(i32, i32, i32*) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @cs_option(i32, i32, i32) #1

declare dso_local i32 @cs_disasm(i32, i32*, i32, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @opex(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @INSOP(i32) #1

declare dso_local i32 @cs_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
