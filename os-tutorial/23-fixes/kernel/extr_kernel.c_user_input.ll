; ModuleID = '/home/carl/AnghaBench/os-tutorial/23-fixes/kernel/extr_kernel.c_user_input.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/23-fixes/kernel/extr_kernel.c_user_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Stopping the CPU. Bye!\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PAGE\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Page: \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c", physical address: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"You said: \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\0A> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_input(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @kprint(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  call void asm sideeffect "hlt", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  br label %34

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = call i32 @kmalloc(i32 1000, i32 1, i32* %3)
  store i32 %17, i32* %4, align 4
  %18 = bitcast [16 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %21 = call i32 @hex_to_ascii(i32 %19, i8* %20)
  %22 = bitcast [16 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 16, i1 false)
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %25 = call i32 @hex_to_ascii(i32 %23, i8* %24)
  %26 = call i32 @kprint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %28 = call i32 @kprint(i8* %27)
  %29 = call i32 @kprint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %31 = call i32 @kprint(i8* %30)
  %32 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %33

33:                                               ; preds = %16, %12
  br label %34

34:                                               ; preds = %33, %10
  %35 = call i32 @kprint(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @kprint(i8* %36)
  %38 = call i32 @kprint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @kprint(i8*) #1

declare dso_local i32 @kmalloc(i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @hex_to_ascii(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 419}
