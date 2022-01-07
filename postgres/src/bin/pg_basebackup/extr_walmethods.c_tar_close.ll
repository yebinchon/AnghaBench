; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_walmethods.c_tar_close.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_walmethods.c_tar_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, i64, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_8__*, i32* }

@CLOSE_UNLINK = common dso_local global i64 0, align 8
@tar_data = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"unlink not supported with compression\00", align 1
@CLOSE_NORMAL = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @tar_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_close(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [512 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = call i32 (...) @tar_clear_error()
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @CLOSE_UNLINK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @tar_set_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %192

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ftruncate(i32 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %192

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @pg_free(%struct.TYPE_8__* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = call i32 @pg_free(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %46, align 8
  store i32 0, i32* %3, align 4
  br label %192

47:                                               ; preds = %2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @tar_write_padding_data(%struct.TYPE_8__* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %192

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %57
  br label %81

75:                                               ; preds = %52
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %74
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @tar_get_current_pos(i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 511
  %87 = and i32 %86, -512
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %82
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @MemSet(i8* %93, i32 0, i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @tar_write(i32* %96, i8* %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %192

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 124
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @print_tar_number(i32* %108, i32 12, i32 %109)
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @CLOSE_NORMAL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %104
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = call i32 @strlcpy(i32* %118, %struct.TYPE_8__* %121, i32 100)
  br label %123

123:                                              ; preds = %114, %104
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 148
  %128 = load i32*, i32** %4, align 8
  %129 = bitcast i32* %128 to %struct.TYPE_8__*
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @tarChecksum(i32* %131)
  %133 = call i32 @print_tar_number(i32* %127, i32 8, i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @SEEK_SET, align 4
  %141 = call i64 @lseek(i32 %136, i64 %139, i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = bitcast i32* %142 to %struct.TYPE_8__*
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %141, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %123
  store i32 -1, i32* %3, align 4
  br label %192

148:                                              ; preds = %123
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %169, label %153

153:                                              ; preds = %148
  store i64 0, i64* @errno, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @write(i32 %156, i32* %159, i32 512)
  %161 = icmp ne i32 %160, 512
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load i64, i64* @errno, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i64, i64* @ENOSPC, align 8
  store i64 %166, i64* @errno, align 8
  br label %167

167:                                              ; preds = %165, %162
  store i32 -1, i32* %3, align 4
  br label %192

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168, %148
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SEEK_END, align 4
  %174 = call i64 @lseek(i32 %172, i64 0, i32 %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  store i32 -1, i32* %3, align 4
  br label %192

177:                                              ; preds = %169
  %178 = load i32*, i32** %4, align 8
  %179 = call i64 @tar_sync(i32* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = call i32 @exit(i32 1) #3
  unreachable

183:                                              ; preds = %177
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = call i32 @pg_free(%struct.TYPE_8__* %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = call i32 @pg_free(%struct.TYPE_8__* %188)
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tar_data, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %191, align 8
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %183, %176, %167, %147, %102, %72, %38, %37, %26
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @tar_clear_error(...) #1

declare dso_local i32 @tar_set_error(i8*) #1

declare dso_local i64 @ftruncate(i32, i64) #1

declare dso_local i32 @pg_free(%struct.TYPE_8__*) #1

declare dso_local i32 @tar_write_padding_data(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @tar_get_current_pos(i32*) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i32 @tar_write(i32*, i8*, i32) #1

declare dso_local i32 @print_tar_number(i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @tarChecksum(i32*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i64 @tar_sync(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
