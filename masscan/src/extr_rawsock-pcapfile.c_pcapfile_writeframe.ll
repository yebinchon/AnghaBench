; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_writeframe.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_writeframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PcapFile = type { i64, i8*, i32*, i32 }

@CAPFILE_BIGENDIAN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s:%lld: could not write packet header\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s:%lld: could not write packet contents\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcapfile_writeframe(%struct.PcapFile* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.PcapFile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  store %struct.PcapFile* %0, %struct.PcapFile** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %15 = icmp eq %struct.PcapFile* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  %17 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %18 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %6
  br label %212

22:                                               ; preds = %16
  %23 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %24 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CAPFILE_BIGENDIAN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = lshr i32 %29, 24
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  store i8 %31, i8* %32, align 16
  %33 = load i32, i32* %11, align 4
  %34 = lshr i32 %33, 16
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %11, align 4
  %38 = lshr i32 %37, 8
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 2
  store i8 %39, i8* %40, align 2
  %41 = load i32, i32* %11, align 4
  %42 = lshr i32 %41, 0
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 3
  store i8 %43, i8* %44, align 1
  %45 = load i32, i32* %12, align 4
  %46 = lshr i32 %45, 24
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 4
  store i8 %47, i8* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = lshr i32 %49, 16
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 5
  store i8 %51, i8* %52, align 1
  %53 = load i32, i32* %12, align 4
  %54 = lshr i32 %53, 8
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 6
  store i8 %55, i8* %56, align 2
  %57 = load i32, i32* %12, align 4
  %58 = lshr i32 %57, 0
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 7
  store i8 %59, i8* %60, align 1
  %61 = load i32, i32* %9, align 4
  %62 = lshr i32 %61, 24
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 8
  store i8 %63, i8* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = lshr i32 %65, 16
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 9
  store i8 %67, i8* %68, align 1
  %69 = load i32, i32* %9, align 4
  %70 = lshr i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 10
  store i8 %71, i8* %72, align 2
  %73 = load i32, i32* %9, align 4
  %74 = lshr i32 %73, 0
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 11
  store i8 %75, i8* %76, align 1
  %77 = load i32, i32* %10, align 4
  %78 = lshr i32 %77, 24
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 12
  store i8 %79, i8* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = lshr i32 %81, 16
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 13
  store i8 %83, i8* %84, align 1
  %85 = load i32, i32* %10, align 4
  %86 = lshr i32 %85, 8
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 14
  store i8 %87, i8* %88, align 2
  %89 = load i32, i32* %10, align 4
  %90 = lshr i32 %89, 0
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 15
  store i8 %91, i8* %92, align 1
  br label %158

93:                                               ; preds = %22
  %94 = load i32, i32* %11, align 4
  %95 = lshr i32 %94, 0
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  store i8 %96, i8* %97, align 16
  %98 = load i32, i32* %11, align 4
  %99 = lshr i32 %98, 8
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 1
  store i8 %100, i8* %101, align 1
  %102 = load i32, i32* %11, align 4
  %103 = lshr i32 %102, 16
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 2
  store i8 %104, i8* %105, align 2
  %106 = load i32, i32* %11, align 4
  %107 = lshr i32 %106, 24
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 3
  store i8 %108, i8* %109, align 1
  %110 = load i32, i32* %12, align 4
  %111 = lshr i32 %110, 0
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 4
  store i8 %112, i8* %113, align 4
  %114 = load i32, i32* %12, align 4
  %115 = lshr i32 %114, 8
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 5
  store i8 %116, i8* %117, align 1
  %118 = load i32, i32* %12, align 4
  %119 = lshr i32 %118, 16
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 6
  store i8 %120, i8* %121, align 2
  %122 = load i32, i32* %12, align 4
  %123 = lshr i32 %122, 24
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 7
  store i8 %124, i8* %125, align 1
  %126 = load i32, i32* %9, align 4
  %127 = lshr i32 %126, 0
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 8
  store i8 %128, i8* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = lshr i32 %130, 8
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 9
  store i8 %132, i8* %133, align 1
  %134 = load i32, i32* %9, align 4
  %135 = lshr i32 %134, 16
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 10
  store i8 %136, i8* %137, align 2
  %138 = load i32, i32* %9, align 4
  %139 = lshr i32 %138, 24
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 11
  store i8 %140, i8* %141, align 1
  %142 = load i32, i32* %10, align 4
  %143 = lshr i32 %142, 0
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 12
  store i8 %144, i8* %145, align 4
  %146 = load i32, i32* %10, align 4
  %147 = lshr i32 %146, 8
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 13
  store i8 %148, i8* %149, align 1
  %150 = load i32, i32* %10, align 4
  %151 = lshr i32 %150, 16
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 14
  store i8 %152, i8* %153, align 2
  %154 = load i32, i32* %10, align 4
  %155 = lshr i32 %154, 24
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 15
  store i8 %156, i8* %157, align 1
  br label %158

158:                                              ; preds = %93, %28
  %159 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %160 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %161 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @fwrite(i8* %159, i32 1, i32 16, i32* %162)
  %164 = icmp ne i32 %163, 16
  br i1 %164, label %165, label %184

165:                                              ; preds = %158
  %166 = load i32, i32* @stderr, align 4
  %167 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %168 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %171 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @fprintf(i32 %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %169, i32 %172)
  %174 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %175 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @perror(i8* %176)
  %178 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %179 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @fclose(i32* %180)
  %182 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %183 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %182, i32 0, i32 2
  store i32* null, i32** %183, align 8
  br label %184

184:                                              ; preds = %165, %158
  %185 = load i8*, i8** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %188 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @fwrite(i8* %185, i32 1, i32 %186, i32* %189)
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %184
  %194 = load i32, i32* @stderr, align 4
  %195 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %196 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %199 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @fprintf(i32 %194, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %197, i32 %200)
  %202 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %203 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @perror(i8* %204)
  %206 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %207 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @fclose(i32* %208)
  %210 = load %struct.PcapFile*, %struct.PcapFile** %7, align 8
  %211 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %210, i32 0, i32 2
  store i32* null, i32** %211, align 8
  br label %212

212:                                              ; preds = %21, %193, %184
  ret void
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
