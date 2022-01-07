; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_stress.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_stress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)* }

@nr_cpus = common dso_local global i32 0, align 4
@finished = common dso_local global i32 0, align 4
@attr = common dso_local global i32 0, align 4
@locking_thread = common dso_local global i32 0, align 4
@bounces = common dso_local global i32 0, align 4
@BOUNCE_POLL = common dso_local global i32 0, align 4
@uffd_poll_thread = common dso_local global i32 0, align 4
@uffd_read_thread = common dso_local global i32 0, align 4
@uffd_read_mutex = common dso_local global i32 0, align 4
@background_thread = common dso_local global i32 0, align 4
@uffd_test_ops = common dso_local global %struct.TYPE_2__* null, align 8
@area_src = common dso_local global i32 0, align 4
@pipefd = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pipefd write error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @stress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stress(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i64* %0, i64** %3, align 8
  %12 = load i32, i32* @nr_cpus, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @nr_cpus, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = load i32, i32* @nr_cpus, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = bitcast i64* %22 to i8**
  store i8** %23, i8*** %9, align 8
  store i32 0, i32* @finished, align 4
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %76, %1
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @nr_cpus, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %15, i64 %30
  %32 = load i32, i32* @locking_thread, align 4
  %33 = load i64, i64* %4, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i64 @pthread_create(i32* %31, i32* @attr, i32 %32, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

38:                                               ; preds = %29
  %39 = load i32, i32* @bounces, align 4
  %40 = load i32, i32* @BOUNCE_POLL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i32, i32* %18, i64 %44
  %46 = load i32, i32* @uffd_poll_thread, align 4
  %47 = load i64, i64* %4, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i64 @pthread_create(i32* %45, i32* @attr, i32 %46, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

52:                                               ; preds = %43
  br label %66

53:                                               ; preds = %38
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i32, i32* %18, i64 %54
  %56 = load i32, i32* @uffd_read_thread, align 4
  %57 = load i8**, i8*** %9, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = bitcast i8** %59 to i8*
  %61 = call i64 @pthread_create(i32* %55, i32* @attr, i32 %56, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

64:                                               ; preds = %53
  %65 = call i32 @pthread_mutex_lock(i32* @uffd_read_mutex)
  br label %66

66:                                               ; preds = %64, %52
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i32, i32* %21, i64 %67
  %69 = load i32, i32* @background_thread, align 4
  %70 = load i64, i64* %4, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i64 @pthread_create(i32* %68, i32* @attr, i32 %69, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %24

79:                                               ; preds = %24
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %93, %79
  %81 = load i64, i64* %4, align 8
  %82 = load i32, i32* @nr_cpus, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds i32, i32* %21, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @pthread_join(i32 %88, i8** null)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %4, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %4, align 8
  br label %80

96:                                               ; preds = %80
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uffd_test_ops, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64 (i32)*, i64 (i32)** %98, align 8
  %100 = load i32, i32* @area_src, align 4
  %101 = call i64 %99(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

104:                                              ; preds = %96
  store i32 1, i32* @finished, align 4
  store i64 0, i64* %4, align 8
  br label %105

105:                                              ; preds = %118, %104
  %106 = load i64, i64* %4, align 8
  %107 = load i32, i32* @nr_cpus, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds i32, i32* %15, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @pthread_join(i32 %113, i8** null)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %4, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %4, align 8
  br label %105

121:                                              ; preds = %105
  store i64 0, i64* %4, align 8
  br label %122

122:                                              ; preds = %171, %121
  %123 = load i64, i64* %4, align 8
  %124 = load i32, i32* @nr_cpus, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ult i64 %123, %125
  br i1 %126, label %127, label %174

127:                                              ; preds = %122
  %128 = load i32, i32* @bounces, align 4
  %129 = load i32, i32* @BOUNCE_POLL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %127
  %133 = load i32*, i32** @pipefd, align 8
  %134 = load i64, i64* %4, align 8
  %135 = mul i64 %134, 2
  %136 = add i64 %135, 1
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @write(i32 %138, i8* %11, i32 1)
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

144:                                              ; preds = %132
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds i32, i32* %18, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i8**, i8*** %9, align 8
  %149 = load i64, i64* %4, align 8
  %150 = getelementptr inbounds i8*, i8** %148, i64 %149
  %151 = call i64 @pthread_join(i32 %147, i8** %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

154:                                              ; preds = %144
  br label %170

155:                                              ; preds = %127
  %156 = load i64, i64* %4, align 8
  %157 = getelementptr inbounds i32, i32* %18, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @pthread_cancel(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

162:                                              ; preds = %155
  %163 = load i64, i64* %4, align 8
  %164 = getelementptr inbounds i32, i32* %18, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @pthread_join(i32 %165, i8** null)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %4, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %4, align 8
  br label %122

174:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %168, %161, %153, %141, %116, %103, %91, %74, %63, %51, %37
  %176 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i64 @pthread_join(i32, i8**) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @pthread_cancel(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
