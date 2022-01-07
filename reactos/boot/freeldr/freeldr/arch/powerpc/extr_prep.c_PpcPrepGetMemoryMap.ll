; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep.c_PpcPrepGetMemoryMap.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep.c_PpcPrepGetMemoryMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@BiosMemoryUsable = common dso_local global i32 0, align 4
@mem_range_end = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Actual RAM: %d Mb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PpcPrepGetMemoryMap(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 asm "mfmsr $0\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = and i32 %11, 28671
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  call void asm sideeffect "mtmsr $0\0A", "r,~{dirflag},~{fpsr},~{flags}"(i32 %13) #3, !srcloc !3
  store i32 262144, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %40, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, -2147483648
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %43

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GetPhys(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 4096
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1437226410, i32 -1437226411
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @SetPhys(i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @GetPhys(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @SetPhys(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 4096
  store i32 %42, i32* %5, align 4
  br label %15

43:                                               ; preds = %22
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 4096
  store i32 %45, i32* %5, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 196608, i32* %48, align 4
  %49 = load i32, i32* @BiosMemoryUsable, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %53, %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  call void asm sideeffect "mtmsr $0\0A", "r,~{dirflag},~{fpsr},~{flags}"(i32 %62) #3, !srcloc !4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* @mem_range_end, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 20
  %66 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %65)
  ret i32 1
}

declare dso_local i32 @GetPhys(i32) #1

declare dso_local i32 @SetPhys(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 635}
!3 = !{i32 708}
!4 = !{i32 1305}
