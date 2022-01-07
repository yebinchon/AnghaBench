; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_x86_64_stack_walk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_x86_64_stack_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stack_walk = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@curr_count = common dso_local global i32 0, align 4
@curr_mode = common dso_local global i64 0, align 8
@stm_done = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"Enter: PC=%s Frame=%s Return=%s Stack=%s Mode=%s Count=%s\0A\00", align 1
@stm_start = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"64bit\00", align 1
@AddrModeFlat = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Bad AddrPC.Mode / AddrFrame.Mode combination\0A\00", align 1
@stm_64bit = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"inconsistent Stack Pointer\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"inconsistent Instruction Pointer\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [72 x i8] c"Leave: PC=%s Frame=%s Return=%s Stack=%s Mode=%s Count=%s FuncTable=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cpu_stack_walk*, %struct.TYPE_7__*, %struct.TYPE_8__*)* @x86_64_stack_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @x86_64_stack_walk(%struct.cpu_stack_walk* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpu_stack_walk*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.cpu_stack_walk* %0, %struct.cpu_stack_walk** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load i32, i32* @curr_count, align 4
  %11 = icmp sle i32 %10, 1
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* @curr_mode, align 8
  %15 = load i64, i64* @stm_done, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** %4, align 8
  br label %204

19:                                               ; preds = %3
  %20 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %21 = getelementptr inbounds %struct.cpu_stack_walk, %struct.cpu_stack_walk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %37)
  %39 = load i64, i64* @curr_mode, align 8
  %40 = load i64, i64* @stm_start, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* @curr_count, align 4
  %45 = call i32 @wine_dbgstr_longlong(i32 %44)
  %46 = call i32 (i8*, i32, i32, i32, i32, i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38, i8* %43, i32 %45)
  %47 = load i64, i64* @curr_mode, align 8
  %48 = load i64, i64* @stm_start, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %19
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AddrModeFlat, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AddrModeFlat, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %201

66:                                               ; preds = %57, %50
  %67 = load i64, i64* @stm_64bit, align 8
  store i64 %67, i64* @curr_mode, align 8
  %68 = load i64, i64* @AddrModeFlat, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i64 %68, i64* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 8
  %77 = call i32 @memset(i32* %76, i32 0, i32 4)
  br label %123

78:                                               ; preds = %19
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %78
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %89
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %201

107:                                              ; preds = %100
  %108 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = sub nsw i64 %113, %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = call i32 @fetch_next_frame(%struct.cpu_stack_walk* %108, %struct.TYPE_8__* %109, i64 %116, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %107
  br label %201

122:                                              ; preds = %107
  store i32 1, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %66
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 7
  %126 = call i32 @memset(i32* %125, i32 0, i32 4)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i64 %129, i64* %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i64 %135, i64* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = bitcast %struct.TYPE_8__* %9 to i8*
  %147 = bitcast %struct.TYPE_8__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 24, i1 false)
  %148 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %5, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = sub nsw i64 %152, %154
  %156 = call i32 @fetch_next_frame(%struct.cpu_stack_walk* %148, %struct.TYPE_8__* %9, i64 %155, i32* null)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %123
  br label %201

159:                                              ; preds = %123
  %160 = load i64, i64* @AddrModeFlat, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i64 %160, i64* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i64 %165, i64* %168, align 8
  %169 = load i8*, i8** @TRUE, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 6
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @TRUE, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* @curr_count, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @curr_count, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  %179 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %178)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %184)
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = call i32 @wine_dbgstr_addr(%struct.TYPE_9__* %187)
  %189 = load i64, i64* @curr_mode, align 8
  %190 = load i64, i64* @stm_start, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %194 = load i32, i32* @curr_count, align 4
  %195 = call i32 @wine_dbgstr_longlong(i32 %194)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, i32, i32, i32, i32, i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %179, i32 %182, i32 %185, i32 %188, i8* %193, i32 %195, i32 %198)
  %200 = load i8*, i8** @TRUE, align 8
  store i8* %200, i8** %4, align 8
  br label %204

201:                                              ; preds = %158, %121, %106, %64
  %202 = load i64, i64* @stm_done, align 8
  store i64 %202, i64* @curr_mode, align 8
  %203 = load i8*, i8** @FALSE, align 8
  store i8* %203, i8** %4, align 8
  br label %204

204:                                              ; preds = %201, %159, %17
  %205 = load i8*, i8** %4, align 8
  ret i8* %205
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @wine_dbgstr_addr(%struct.TYPE_9__*) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @fetch_next_frame(%struct.cpu_stack_walk*, %struct.TYPE_8__*, i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
