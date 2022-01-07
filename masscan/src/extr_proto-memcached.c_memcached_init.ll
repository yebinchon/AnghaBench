; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-memcached.c_memcached_init.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-memcached.c_memcached_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.Banner1 = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"memcached-responses\00", align 1
@SMACK_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@memcached_responses = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@sm_memcached_responses = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"memcached-stats\00", align 1
@memcached_stats = common dso_local global %struct.TYPE_3__* null, align 8
@sm_memcached_stats = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Banner1*)* @memcached_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @memcached_init(%struct.Banner1* %0) #0 {
  %2 = alloca %struct.Banner1*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.Banner1* %0, %struct.Banner1** %2, align 8
  %10 = load i32, i32* @SMACK_CASE_INSENSITIVE, align 4
  %11 = call i8* @smack_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %13 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %83, %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memcached_responses, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %86

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memcached_responses, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @strlen(i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 2
  %32 = call i8* @MALLOC(i64 %31)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memcached_responses, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i8* %33, i64 %39, i64 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %77, %22
  %47 = load i32, i32* %5, align 4
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.1, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %56, align 1
  %57 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %58 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  %63 = add i32 %62, 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memcached_responses, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memcached_responses, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @smack_add_pattern(i8* %59, i8* %60, i32 %63, i32 %69, i32 %75)
  br label %77

77:                                               ; preds = %49
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %46

80:                                               ; preds = %46
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %14

86:                                               ; preds = %14
  %87 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %88 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @smack_compile(i8* %89)
  %91 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %92 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** @sm_memcached_responses, align 8
  %94 = load i32, i32* @SMACK_CASE_INSENSITIVE, align 4
  %95 = call i8* @smack_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %97 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %167, %86
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @memcached_stats, align 8
  %100 = load i32, i32* %3, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %170

106:                                              ; preds = %98
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @memcached_stats, align 8
  %108 = load i32, i32* %3, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @strlen(i64 %112)
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, 2
  %116 = call i8* @MALLOC(i64 %115)
  store i8* %116, i8** %7, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @memcached_stats, align 8
  %119 = load i32, i32* %3, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @memcpy(i8* %117, i64 %123, i64 %124)
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 1
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %161, %106
  %131 = load i32, i32* %8, align 4
  %132 = icmp ult i32 %131, 4
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.1, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %7, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 %137, i8* %140, align 1
  %141 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %142 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i64, i64* %9, align 8
  %146 = trunc i64 %145 to i32
  %147 = add i32 %146, 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** @memcached_stats, align 8
  %149 = load i32, i32* %3, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** @memcached_stats, align 8
  %155 = load i32, i32* %3, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @smack_add_pattern(i8* %143, i8* %144, i32 %147, i32 %153, i32 %159)
  br label %161

161:                                              ; preds = %133
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %130

164:                                              ; preds = %130
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %3, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %98

170:                                              ; preds = %98
  %171 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %172 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @smack_compile(i8* %173)
  %175 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %176 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** @sm_memcached_stats, align 8
  %178 = load %struct.Banner1*, %struct.Banner1** %2, align 8
  %179 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  ret i8* %180
}

declare dso_local i8* @smack_create(i8*, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i8* @MALLOC(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @smack_add_pattern(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @smack_compile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
