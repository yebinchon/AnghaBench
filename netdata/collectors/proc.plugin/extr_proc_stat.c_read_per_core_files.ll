; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_stat.c_read_per_core_files.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_stat.c_read_per_core_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_chart = type { %struct.per_core_single_number_file* }
%struct.per_core_single_number_file = type { i32, i32, i64, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Cannot open file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot read file '%s'\00", align 1
@keep_per_core_fds_open = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot seek in file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_chart*, i64, i64)* @read_per_core_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_per_core_files(%struct.cpu_chart* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_chart*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [51 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.per_core_single_number_file*, align 8
  %13 = alloca i64, align 8
  store %struct.cpu_chart* %0, %struct.cpu_chart** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %144, %3
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %147

18:                                               ; preds = %14
  %19 = load %struct.cpu_chart*, %struct.cpu_chart** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %19, i64 %20
  %22 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %21, i32 0, i32 0
  %23 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %23, i64 %24
  store %struct.per_core_single_number_file* %25, %struct.per_core_single_number_file** %12, align 8
  %26 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %27 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %29 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %144

37:                                               ; preds = %18
  %38 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %39 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %37
  %46 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %47 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = call i32 @open(i32 %48, i32 %49)
  %51 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %52 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %54 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, -1
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %62 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %144

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %68 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [51 x i8], [51 x i8]* %8, i64 0, i64 0
  %71 = call i64 @read(i32 %69, i8* %70, i32 50)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp ult i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %66
  %78 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %79 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %83 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %87 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %86, i32 0, i32 1
  store i32 -1, i32* %87, align 4
  br label %144

88:                                               ; preds = %66
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds [51 x i8], [51 x i8]* %8, i64 0, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i64, i64* @keep_per_core_fds_open, align 8
  %92 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %93 = icmp ne i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %99 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @close(i32 %100)
  %102 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %103 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %102, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  br label %123

104:                                              ; preds = %88
  %105 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %106 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SEEK_SET, align 4
  %109 = call i32 @lseek(i32 %107, i32 0, i32 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %113 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %117 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @close(i32 %118)
  %120 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %121 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %120, i32 0, i32 1
  store i32 -1, i32* %121, align 4
  br label %122

122:                                              ; preds = %111, %104
  br label %123

123:                                              ; preds = %122, %97
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  %127 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %128 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = getelementptr inbounds [51 x i8], [51 x i8]* %8, i64 0, i64 0
  %130 = call i64 @str2ll(i8* %129, i32* null)
  %131 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %132 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %12, align 8
  %134 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i64 @likely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %124
  %141 = load i64, i64* %11, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %140, %124
  br label %144

144:                                              ; preds = %143, %77, %60, %36
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %9, align 8
  br label %14

147:                                              ; preds = %14
  %148 = load i64, i64* %10, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 -1, i32* %4, align 4
  br label %158

151:                                              ; preds = %147
  %152 = load i64, i64* %11, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %158

155:                                              ; preds = %151
  %156 = load i64, i64* %11, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %154, %150
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @str2ll(i8*, i32*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
