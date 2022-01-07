; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op1_memimmhandle.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op1_memimmhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }

@UT64_MAX = common dso_local global i64 0, align 8
@X86_REG_RIP = common dso_local global i32 0, align 4
@X86_REG_RBP = common dso_local global i32 0, align 4
@X86_REG_EBP = common dso_local global i32 0, align 4
@R_ANAL_STACK_GET = common dso_local global i32 0, align 4
@X86_REG_INVALID = common dso_local global i32 0, align 4
@X86_REG_RSP = common dso_local global i32 0, align 4
@X86_REG_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i64, i32)* @op1_memimmhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op1_memimmhandle(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  %22 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UT64_MAX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %137

33:                                               ; preds = %27, %4
  call void @INSOP(%struct.TYPE_10__* sret %9, i32 1)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %135 [
    i32 128, label %36
    i32 129, label %114
  ]

36:                                               ; preds = %33
  call void @INSOP(%struct.TYPE_10__* sret %10, i32 1)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  call void @INSOP(%struct.TYPE_10__* sret %11, i32 1)
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  call void @INSOP(%struct.TYPE_10__* sret %12, i32 1)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @X86_REG_RIP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %36
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %113

63:                                               ; preds = %36
  call void @INSOP(%struct.TYPE_10__* sret %13, i32 1)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @X86_REG_RBP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  call void @INSOP(%struct.TYPE_10__* sret %14, i32 1)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @X86_REG_EBP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @R_ANAL_STACK_GET, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %112

82:                                               ; preds = %69
  call void @INSOP(%struct.TYPE_10__* sret %15, i32 1)
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @X86_REG_INVALID, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  call void @INSOP(%struct.TYPE_10__* sret %16, i32 1)
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @X86_REG_INVALID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  call void @INSOP(%struct.TYPE_10__* sret %17, i32 1)
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @X86_REG_INVALID, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  call void @INSOP(%struct.TYPE_10__* sret %18, i32 1)
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %100, %94, %88, %82
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112, %51
  br label %136

114:                                              ; preds = %33
  call void @INSOP(%struct.TYPE_10__* sret %19, i32 1)
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %116, 10
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  call void @INSOP(%struct.TYPE_10__* sret %20, i32 0)
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @X86_REG_RSP, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  call void @INSOP(%struct.TYPE_10__* sret %21, i32 0)
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @X86_REG_ESP, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  call void @INSOP(%struct.TYPE_10__* sret %22, i32 1)
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %123, %118, %114
  br label %136

135:                                              ; preds = %33
  br label %136

136:                                              ; preds = %135, %134, %113
  br label %137

137:                                              ; preds = %136, %27
  ret void
}

declare dso_local void @INSOP(%struct.TYPE_10__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
