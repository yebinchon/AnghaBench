; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_load_gs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_load_gs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYS_arch_prctl = common dso_local global i32 0, align 4
@ARCH_SET_GS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ARCH_SET_GS\00", align 1
@SYS_modify_ldt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"\09using LDT slot 0\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_32BIT = common dso_local global i32 0, align 4
@set_thread_area_entry_number = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"[NOTE]\09could not create a segment -- test won't do anything\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\09using GDT slot %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 ()* @load_gs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @load_gs() #0 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.user_desc, align 4
  %3 = alloca %struct.user_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = load i32, i32* @SYS_arch_prctl, align 4
  %7 = load i32, i32* @ARCH_SET_GS, align 4
  %8 = call i64 (i32, i32, %struct.user_desc*, ...) @syscall(i32 %6, i32 %7, %struct.user_desc* null)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = bitcast %struct.user_desc* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 36, i1 false)
  %14 = bitcast i8* %13 to %struct.user_desc*
  %15 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %14, i32 0, i32 1
  store i32 -1163005939, i32* %15, align 4
  %16 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %14, i32 0, i32 2
  store i32 1048575, i32* %16, align 4
  %17 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %14, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %14, i32 0, i32 4
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @SYS_modify_ldt, align 4
  %20 = call i64 (i32, i32, %struct.user_desc*, ...) @syscall(i32 %19, i32 1, %struct.user_desc* %2, i64 36)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 7) #3, !srcloc !2
  store i16 7, i16* %1, align 2
  br label %62

24:                                               ; preds = %12
  %25 = load i32, i32* @PROT_READ, align 4
  %26 = load i32, i32* @PROT_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAP_PRIVATE, align 4
  %29 = load i32, i32* @MAP_ANONYMOUS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAP_32BIT, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.user_desc* @mmap(i32* null, i32 36, i32 %27, i32 %32, i32 -1, i32 0)
  store %struct.user_desc* %33, %struct.user_desc** %3, align 8
  %34 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %35 = call i32 @memcpy(%struct.user_desc* %34, %struct.user_desc* %2, i32 36)
  %36 = load i32, i32* @set_thread_area_entry_number, align 4
  %37 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %38 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %40 = call i64 asm sideeffect "int $$0x80", "={ax},{ax},{bx},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i32 243, %struct.user_desc* %39) #3, !srcloc !3
  store i64 %40, i64* %4, align 8
  %41 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %42 = call i32 @memcpy(%struct.user_desc* %2, %struct.user_desc* %41, i32 36)
  %43 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %44 = call i32 @munmap(%struct.user_desc* %43, i32 36)
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i16 0, i16* %1, align 2
  br label %62

49:                                               ; preds = %24
  %50 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %2, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* @set_thread_area_entry_number, align 4
  %55 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %2, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 3
  %58 = or i32 %57, 3
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %5, align 2
  %60 = load i16, i16* %5, align 2
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %60) #3, !srcloc !4
  %61 = load i16, i16* %5, align 2
  store i16 %61, i16* %1, align 2
  br label %62

62:                                               ; preds = %49, %47, %22
  %63 = load i16, i16* %1, align 2
  ret i16 %63
}

declare dso_local i64 @syscall(i32, i32, %struct.user_desc*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.user_desc* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.user_desc*, %struct.user_desc*, i32) #1

declare dso_local i32 @munmap(%struct.user_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1248}
!3 = !{i32 1596}
!4 = !{i32 2079}
