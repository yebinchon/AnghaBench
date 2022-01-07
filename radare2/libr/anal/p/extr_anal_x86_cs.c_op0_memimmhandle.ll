; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op0_memimmhandle.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op0_memimmhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@UT64_MAX = common dso_local global i8* null, align 8
@CYCLE_MEM = common dso_local global i32 0, align 4
@X86_REG_RIP = common dso_local global i32 0, align 4
@X86_REG_RBP = common dso_local global i32 0, align 4
@X86_REG_EBP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_REG = common dso_local global i32 0, align 4
@R_ANAL_STACK_SET = common dso_local global i32 0, align 4
@X86_REG_INVALID = common dso_local global i32 0, align 4
@X86_OP_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32)* @op0_memimmhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op0_memimmhandle(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca %struct.TYPE_10__, align 4
  %18 = alloca %struct.TYPE_10__, align 4
  %19 = alloca %struct.TYPE_10__, align 4
  %20 = alloca %struct.TYPE_10__, align 4
  %21 = alloca %struct.TYPE_10__, align 4
  %22 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i8*, i8** @UT64_MAX, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  call void @INSOP(%struct.TYPE_10__* sret %9, i32 0)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %156 [
    i32 129, label %29
    i32 128, label %145
  ]

29:                                               ; preds = %4
  %30 = load i32, i32* @CYCLE_MEM, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  call void @INSOP(%struct.TYPE_10__* sret %10, i32 0)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load i8*, i8** @UT64_MAX, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %29
  call void @INSOP(%struct.TYPE_10__* sret %11, i32 0)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  call void @INSOP(%struct.TYPE_10__* sret %12, i32 0)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @X86_REG_RIP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %134

69:                                               ; preds = %47
  call void @INSOP(%struct.TYPE_10__* sret %13, i32 0)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @X86_REG_RBP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  call void @INSOP(%struct.TYPE_10__* sret %14, i32 0)
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @X86_REG_EBP, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %75, %69
  %82 = load i32, i32* @R_ANAL_OP_TYPE_REG, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @R_ANAL_STACK_SET, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %133

93:                                               ; preds = %75
  call void @INSOP(%struct.TYPE_10__* sret %15, i32 0)
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @X86_REG_INVALID, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %93
  call void @INSOP(%struct.TYPE_10__* sret %16, i32 0)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @X86_REG_INVALID, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %99
  call void @INSOP(%struct.TYPE_10__* sret %17, i32 0)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @X86_REG_INVALID, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  call void @INSOP(%struct.TYPE_10__* sret %18, i32 0)
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 4096
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i8*, i8** @UT64_MAX, align 8
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %116
  br label %132

132:                                              ; preds = %131, %111, %105, %99, %93
  br label %133

133:                                              ; preds = %132, %81
  br label %134

134:                                              ; preds = %133, %57
  call void @INSOP(%struct.TYPE_10__* sret %19, i32 1)
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @X86_OP_IMM, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  call void @INSOP(%struct.TYPE_10__* sret %20, i32 1)
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %134
  br label %157

145:                                              ; preds = %4
  call void @INSOP(%struct.TYPE_10__* sret %21, i32 1)
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @X86_OP_IMM, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  call void @INSOP(%struct.TYPE_10__* sret %22, i32 1)
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %145
  br label %157

156:                                              ; preds = %4
  br label %157

157:                                              ; preds = %156, %155, %144
  ret void
}

declare dso_local void @INSOP(%struct.TYPE_10__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
