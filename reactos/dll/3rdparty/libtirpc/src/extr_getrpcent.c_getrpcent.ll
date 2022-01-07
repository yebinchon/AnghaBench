; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getrpcent.c_getrpcent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getrpcent.c_getrpcent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcent = type { i32 }
%struct.rpcdata = type { i64, i8*, i32*, i32*, i32 }

@RPCDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@BUFSIZ = common dso_local global i64 0, align 8
@__yp_nomap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpcent* @getrpcent() #0 {
  %1 = alloca %struct.rpcent*, align 8
  %2 = alloca %struct.rpcdata*, align 8
  %3 = call %struct.rpcdata* (...) @_rpcdata()
  store %struct.rpcdata* %3, %struct.rpcdata** %2, align 8
  %4 = load %struct.rpcdata*, %struct.rpcdata** %2, align 8
  %5 = icmp eq %struct.rpcdata* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.rpcent* null, %struct.rpcent** %1, align 8
  br label %40

7:                                                ; preds = %0
  %8 = load %struct.rpcdata*, %struct.rpcdata** %2, align 8
  %9 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load i32, i32* @RPCDB, align 4
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.rpcdata*, %struct.rpcdata** %2, align 8
  %16 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = icmp eq i32* %14, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.rpcent* null, %struct.rpcent** %1, align 8
  br label %40

19:                                               ; preds = %12, %7
  %20 = load %struct.rpcdata*, %struct.rpcdata** %2, align 8
  %21 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* @BUFSIZ, align 8
  %24 = sub nsw i64 %23, 1
  %25 = load %struct.rpcdata*, %struct.rpcdata** %2, align 8
  %26 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @fgets(i8* %22, i64 %24, i32* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store %struct.rpcent* null, %struct.rpcent** %1, align 8
  br label %40

31:                                               ; preds = %19
  %32 = load %struct.rpcdata*, %struct.rpcdata** %2, align 8
  %33 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.rpcdata*, %struct.rpcdata** %2, align 8
  %36 = getelementptr inbounds %struct.rpcdata, %struct.rpcdata* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call %struct.rpcent* @interpret(i8* %34, i32 %38)
  store %struct.rpcent* %39, %struct.rpcent** %1, align 8
  br label %40

40:                                               ; preds = %31, %30, %18, %6
  %41 = load %struct.rpcent*, %struct.rpcent** %1, align 8
  ret %struct.rpcent* %41
}

declare dso_local %struct.rpcdata* @_rpcdata(...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i64, i32*) #1

declare dso_local %struct.rpcent* @interpret(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
