; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-charfuncs.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-charfuncs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.t1 = private unnamed_addr constant [16 x i8] c"abc  def  ghi  \00", align 16
@.str = private unnamed_addr constant [10 x i8] c"t1: _%s_\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"byleng(t1, %d): %d, ldchar: _%s_\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca [50 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [16 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.t1, i32 0, i32 0), i64 16, i1 false)
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %9 = call i32 @rupshift(i8* %8)
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 2, i32* %4, align 4
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %15 = call i32 @ldchar(i8* %12, i32 %13, i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @byleng(i8* %17, i32 %18)
  %20 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %19, i8* %20)
  store i32 5, i32* %4, align 4
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %25 = call i32 @ldchar(i8* %22, i32 %23, i8* %24)
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @byleng(i8* %27, i32 %28)
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i8* %30)
  store i32 9, i32* %4, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %35 = call i32 @ldchar(i8* %32, i32 %33, i8* %34)
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @byleng(i8* %37, i32 %38)
  %40 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i8* %40)
  store i32 15, i32* %4, align 4
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %43 = load i32, i32* %4, align 4
  %44 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %45 = call i32 @ldchar(i8* %42, i32 %43, i8* %44)
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @byleng(i8* %47, i32 %48)
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49, i8* %50)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @rupshift(i8*) #2

declare dso_local i32 @ldchar(i8*, i32, i8*) #2

declare dso_local i32 @byleng(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
