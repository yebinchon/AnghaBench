; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kickfd = common dso_local global i64 0, align 8
@callfd = common dso_local global i64 0, align 8
@optstring = common dso_local global i32 0, align 4
@longopts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ring_size = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@runcycles = common dso_local global i64 0, align 8
@max_outstanding = common dso_local global i64 0, align 8
@param = common dso_local global i64 0, align 8
@batch = common dso_local global i64 0, align 8
@do_sleep = common dso_local global i32 0, align 4
@do_relax = common dso_local global i32 0, align 4
@do_exit = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@start_host = common dso_local global i32 0, align 4
@start_guest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = call i64 @eventfd(i32 0, i32 0)
  store i64 %15, i64* @kickfd, align 8
  %16 = load i64, i64* @kickfd, align 8
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i64 @eventfd(i32 0, i32 0)
  store i64 %20, i64* @callfd, align 8
  %21 = load i64, i64* @callfd, align 8
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %153, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* @optstring, align 4
  %29 = load i32, i32* @longopts, align 4
  %30 = call i32 @getopt_long(i32 %26, i8** %27, i32 %28, i32 %29, i32* null)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %150 [
    i32 -1, label %32
    i32 63, label %33
    i32 72, label %36
    i32 71, label %38
    i32 82, label %40
    i32 67, label %63
    i32 111, label %84
    i32 112, label %105
    i32 98, label %126
    i32 115, label %147
    i32 120, label %148
    i32 101, label %149
  ]

32:                                               ; preds = %25
  br label %154

33:                                               ; preds = %25
  %34 = call i32 (...) @help()
  %35 = call i32 @exit(i32 2) #3
  unreachable

36:                                               ; preds = %25
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %10, align 8
  br label %153

38:                                               ; preds = %25
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** %11, align 8
  br label %153

40:                                               ; preds = %25
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @strtol(i8* %41, i8** %12, i32 0)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* @ring_size, align 4
  %44 = load i32, i32* @ring_size, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @ring_size, align 4
  %48 = load i32, i32* @ring_size, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %46, %40
  %54 = phi i1 [ false, %40 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  br label %153

63:                                               ; preds = %25
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i8* @strtol(i8* %64, i8** %12, i32 0)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %13, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64, i64* %13, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @INT_MAX, align 8
  %78 = icmp slt i64 %76, %77
  br label %79

79:                                               ; preds = %75, %63
  %80 = phi i1 [ false, %63 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i64, i64* %13, align 8
  store i64 %83, i64* @runcycles, align 8
  br label %153

84:                                               ; preds = %25
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i8* @strtol(i8* %85, i8** %12, i32 0)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %13, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i64, i64* %13, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @INT_MAX, align 8
  %99 = icmp slt i64 %97, %98
  br label %100

100:                                              ; preds = %96, %84
  %101 = phi i1 [ false, %84 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i64, i64* %13, align 8
  store i64 %104, i64* @max_outstanding, align 8
  br label %153

105:                                              ; preds = %25
  %106 = load i8*, i8** @optarg, align 8
  %107 = call i8* @strtol(i8* %106, i8** %12, i32 0)
  %108 = ptrtoint i8* %107 to i64
  store i64 %108, i64* %13, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i64, i64* %13, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @INT_MAX, align 8
  %120 = icmp slt i64 %118, %119
  br label %121

121:                                              ; preds = %117, %105
  %122 = phi i1 [ false, %105 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i64, i64* %13, align 8
  store i64 %125, i64* @param, align 8
  br label %153

126:                                              ; preds = %25
  %127 = load i8*, i8** @optarg, align 8
  %128 = call i8* @strtol(i8* %127, i8** %12, i32 0)
  %129 = ptrtoint i8* %128 to i64
  store i64 %129, i64* %13, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i64, i64* %13, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %126
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* @INT_MAX, align 8
  %141 = icmp slt i64 %139, %140
  br label %142

142:                                              ; preds = %138, %126
  %143 = phi i1 [ false, %126 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i64, i64* %13, align 8
  store i64 %146, i64* @batch, align 8
  br label %153

147:                                              ; preds = %25
  store i32 1, i32* @do_sleep, align 4
  br label %153

148:                                              ; preds = %25
  store i32 1, i32* @do_relax, align 4
  br label %153

149:                                              ; preds = %25
  store i32 1, i32* @do_exit, align 4
  br label %153

150:                                              ; preds = %25
  %151 = call i32 (...) @help()
  %152 = call i32 @exit(i32 4) #3
  unreachable

153:                                              ; preds = %149, %148, %147, %142, %121, %100, %79, %53, %38, %36
  br label %25

154:                                              ; preds = %32
  %155 = load i64, i64* @batch, align 8
  %156 = load i64, i64* @max_outstanding, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i64, i64* @max_outstanding, align 8
  store i64 %159, i64* @batch, align 8
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i32, i32* @optind, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = call i32 (...) @help()
  %166 = call i32 @exit(i32 4) #3
  unreachable

167:                                              ; preds = %160
  %168 = call i32 (...) @alloc_ring()
  %169 = load i32, i32* @start_host, align 4
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @pthread_create(i32* %7, i32* null, i32 %169, i8* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load i32, i32* @start_guest, align 4
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @pthread_create(i32* %8, i32* null, i32 %177, i8* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @pthread_join(i32 %185, i8** %9)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @pthread_join(i32 %192, i8** %9)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  ret i32 0
}

declare dso_local i64 @eventfd(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @alloc_ring(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
