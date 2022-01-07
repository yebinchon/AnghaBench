; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_8051.c_set_cpu_model.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_8051.c_set_cpu_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@cpu_models = common dso_local global %struct.TYPE_11__* null, align 8
@cpu_curr_model = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"_code\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_idata\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_sfr\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_xdata\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"_pdata\00", align 1
@I8051_IDATA = common dso_local global i32 0, align 4
@I8051_SFR = common dso_local global i32 0, align 4
@I8051_XDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @set_cpu_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpu_model(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %178

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_curr_model, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_curr_model, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @r_str_casecmp(i8* %38, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %136

44:                                               ; preds = %37, %34, %31
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %65, %44
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @r_str_casecmp(i8* %54, i8* %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %53, %45
  %64 = phi i1 [ false, %45 ], [ %62, %53 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %45

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %68
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %80
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** @cpu_curr_model, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %5, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %6, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %7, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @i8051_reg_write(i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @i8051_reg_write(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = sub nsw i64 %118, 128
  %120 = call i32 @i8051_reg_write(i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @i8051_reg_write(i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_models, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @i8051_reg_write(i32 %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %134)
  br label %150

136:                                              ; preds = %37
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @i8051_reg_read(i32 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i64 %140, i64* %5, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @i8051_reg_read(i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %145 = add nsw i64 %144, 128
  store i64 %145, i64* %6, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @i8051_reg_read(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i64 %149, i64* %7, align 8
  br label %150

150:                                              ; preds = %136, %77
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %150
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = load i32, i32* @I8051_IDATA, align 4
  %165 = load i64, i64* %5, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @map_cpu_memory(%struct.TYPE_10__* %163, i32 %164, i64 %165, i32 256, i32 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = load i32, i32* @I8051_SFR, align 4
  %170 = load i64, i64* %6, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @map_cpu_memory(%struct.TYPE_10__* %168, i32 %169, i64 %170, i32 128, i32 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = load i32, i32* @I8051_XDATA, align 4
  %175 = load i64, i64* %7, align 8
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @map_cpu_memory(%struct.TYPE_10__* %173, i32 %174, i64 %175, i32 65536, i32 %176)
  br label %178

178:                                              ; preds = %14, %162, %156, %150
  ret void
}

declare dso_local i64 @r_str_casecmp(i8*, i8*) #1

declare dso_local i32 @i8051_reg_write(i32, i8*, i64) #1

declare dso_local i64 @i8051_reg_read(i32, i8*) #1

declare dso_local i32 @map_cpu_memory(%struct.TYPE_10__*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
