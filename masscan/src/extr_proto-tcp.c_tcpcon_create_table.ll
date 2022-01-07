; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_create_table.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_ConnectionTable = type { i32, i32, i32, i32, %struct.Output*, i32, i32, i32*, i32*, %struct.TemplatePacket*, i32, i32*, i32 }
%struct.TemplatePacket = type { i32 }
%struct.Output = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TCP_ConnectionTable* @tcpcon_create_table(i64 %0, i32* %1, i32* %2, %struct.TemplatePacket* %3, i32 %4, %struct.Output* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TemplatePacket*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.Output*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TCP_ConnectionTable*, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TemplatePacket* %3, %struct.TemplatePacket** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.Output* %5, %struct.Output** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = call %struct.TCP_ConnectionTable* @CALLOC(i32 1, i32 80)
  store %struct.TCP_ConnectionTable* %19, %struct.TCP_ConnectionTable** %17, align 8
  %20 = load i32, i32* %15, align 4
  %21 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %22 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %24 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %29 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %28, i32 0, i32 0
  store i32 30, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %8
  %31 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %32 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %31, i32 0, i32 1
  store i32 2, i32* %32, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %35 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %34, i32 0, i32 12
  store i32 %33, i32* %35, align 8
  store i64 1, i64* %18, align 8
  br label %36

36:                                               ; preds = %46, %30
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* %18, align 8
  %42 = mul i64 %41, 2
  store i64 %42, i64* %18, align 8
  %43 = load i64, i64* %18, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i64 16777216, i64* %18, align 8
  br label %47

46:                                               ; preds = %40
  br label %36

47:                                               ; preds = %45, %36
  %48 = load i64, i64* %18, align 8
  %49 = icmp ugt i64 %48, 16777216
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 16777216, i64* %18, align 8
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i64, i64* %18, align 8
  %53 = icmp ult i64 %52, 1024
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 1024, i64* %18, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i64, i64* %18, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %75, %55
  %58 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %59 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %58, i32 0, i32 11
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i64, i64* %9, align 8
  %64 = mul i64 %63, 4
  %65 = call i32* @malloc(i64 %64)
  %66 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %67 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %66, i32 0, i32 11
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %69 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %68, i32 0, i32 11
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i64, i64* %9, align 8
  %74 = lshr i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %72, %62
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %78 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %77, i32 0, i32 11
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = mul i64 %80, 4
  %82 = call i32 @memset(i32* %79, i32 0, i64 %81)
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %86 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %87, 1
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %91 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = call i32 @time(i32 0)
  %93 = call i32 @TICKS_FROM_SECS(i32 %92)
  %94 = call i32 @timeouts_create(i32 %93)
  %95 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %96 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TemplatePacket*, %struct.TemplatePacket** %12, align 8
  %98 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %99 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %98, i32 0, i32 9
  store %struct.TemplatePacket* %97, %struct.TemplatePacket** %99, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %102 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %101, i32 0, i32 8
  store i32* %100, i32** %102, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %105 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %104, i32 0, i32 7
  store i32* %103, i32** %105, align 8
  %106 = call i32 (...) @banner1_create()
  %107 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %108 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %111 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.Output*, %struct.Output** %14, align 8
  %113 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  %114 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %113, i32 0, i32 4
  store %struct.Output* %112, %struct.Output** %114, align 8
  %115 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %17, align 8
  ret %struct.TCP_ConnectionTable* %115
}

declare dso_local %struct.TCP_ConnectionTable* @CALLOC(i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @timeouts_create(i32) #1

declare dso_local i32 @TICKS_FROM_SECS(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @banner1_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
