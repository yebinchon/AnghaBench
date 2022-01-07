; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_expand_funcname.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_expand_funcname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LLVMJitContext = type { i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s_%zu_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @llvm_expand_funcname(%struct.LLVMJitContext* %0, i8* %1) #0 {
  %3 = alloca %struct.LLVMJitContext*, align 8
  %4 = alloca i8*, align 8
  store %struct.LLVMJitContext* %0, %struct.LLVMJitContext** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.LLVMJitContext*, %struct.LLVMJitContext** %3, align 8
  %6 = getelementptr inbounds %struct.LLVMJitContext, %struct.LLVMJitContext* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load %struct.LLVMJitContext*, %struct.LLVMJitContext** %3, align 8
  %12 = getelementptr inbounds %struct.LLVMJitContext, %struct.LLVMJitContext* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.LLVMJitContext*, %struct.LLVMJitContext** %3, align 8
  %19 = getelementptr inbounds %struct.LLVMJitContext, %struct.LLVMJitContext* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.LLVMJitContext*, %struct.LLVMJitContext** %3, align 8
  %22 = getelementptr inbounds %struct.LLVMJitContext, %struct.LLVMJitContext* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = call i8* @psprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20, i32 %23)
  ret i8* %25
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @psprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
