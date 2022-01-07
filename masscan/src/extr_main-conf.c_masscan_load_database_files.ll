; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_load_database_files.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_load_database_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @masscan_load_database_files(%struct.Masscan* %0) #0 {
  %2 = alloca %struct.Masscan*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %2, align 8
  %6 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %7 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %14 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = call i8* (...) @payloads_udp_create()
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %22 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32* %20, i32** %23, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %26 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = call i8* (...) @payloads_udp_create()
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %34 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  store i32* %32, i32** %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i8*, i8** %3, align 8
  %38 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %39 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %43 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @payloads_read_pcap(i8* %37, i32* %41, i32* %45)
  br label %47

47:                                               ; preds = %36, %1
  %48 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %49 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %47
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @fopen_s(i32** %4, i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %4, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %54
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @perror(i8* %63)
  br label %87

65:                                               ; preds = %59
  %66 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %67 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = call i8* (...) @payloads_udp_create()
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %75 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store i32* %73, i32** %76, align 8
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32*, i32** %4, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %81 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @payloads_udp_readfile(i32* %78, i8* %79, i32* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @fclose(i32* %85)
  br label %87

87:                                               ; preds = %77, %62
  br label %88

88:                                               ; preds = %87, %47
  %89 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %90 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %3, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %88
  %96 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %97 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %103 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @nmapserviceprobes_free(i32 %105)
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @nmapserviceprobes_read_file(i8* %108)
  %110 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %111 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %107, %88
  ret void
}

declare dso_local i8* @payloads_udp_create(...) #1

declare dso_local i32 @payloads_read_pcap(i8*, i32*, i32*) #1

declare dso_local i32 @fopen_s(i32**, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @payloads_udp_readfile(i32*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @nmapserviceprobes_free(i32) #1

declare dso_local i32 @nmapserviceprobes_read_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
